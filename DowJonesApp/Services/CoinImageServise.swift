//
//  CoinImageServise.swift
//  DowJonesApp
//
//  Created by MaksBarbaruk on 26.10.2022.
//

import Foundation
import SwiftUI
import Combine

class CoinImageServise {
    @Published var image: UIImage? = nil
    
    private let coin: Coin
    private var imageSubscription: AnyCancellable?
    
    init(coin: Coin) {
        self.coin = coin
        getCoinImage()
    }
    
    private func getCoinImage() {
        guard let url = URL(string: coin.image) else { return }
        
        imageSubscription = NetworkingManager.download(url: url)
            .tryMap({ (data) -> UIImage? in
                return UIImage(data: data)
            })
             .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedImage) in
                self?.image = returnedImage
                self?.imageSubscription?.cancel()
            })
    }
}

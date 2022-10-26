//
//  CoinImageViewModel.swift
//  DowJonesApp
//
//  Created by MaksBarbaruk on 27.10.2022.
//

import Foundation
import SwiftUI
import Combine

class CoinImageViewModel: ObservableObject {
    @Published var image: UIImage? = nil
    @Published var isLoading: Bool = false
    
    private let coin: Coin
    private let dataServise: CoinImageServise
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: Coin) {
        self.coin = coin
        self.dataServise = CoinImageServise(coin: coin)
        addSubscribers()
        self.isLoading = true
    }
    
    private func addSubscribers() {
        dataServise.$image
            .sink { [weak self] (_) in
                self?.isLoading = false
            } receiveValue: { [weak self] (returnedImage) in
                self?.image = returnedImage
            }
            .store(in: &cancellables)
    }
}

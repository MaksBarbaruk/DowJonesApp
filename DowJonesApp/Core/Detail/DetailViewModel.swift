//
//  DetailViewModel.swift
//  DowJonesApp
//
//  Created by MaksBarbaruk on 29.10.2022.
//

import Foundation
import SwiftUI
import Combine

class DetailViewModel: ObservableObject {
    
    private let coinDetailService: CoinDetailDataService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: Coin) {
        self.coinDetailService = CoinDetailDataService(coin: coin)
        addSubscribers()
    }
    
    private func addSubscribers() {
        coinDetailService.$coinDetails
            .sink { (returnedCoinDetails) in
                print("recieved")
            }
            .store(in: &cancellables)
    }
}

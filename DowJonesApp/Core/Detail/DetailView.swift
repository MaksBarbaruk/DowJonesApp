//
//  DetailView.swift
//  DowJonesApp
//
//  Created by MaksBarbaruk on 29.10.2022.
//

import SwiftUI

struct DetailLoadingView: View {
    @Binding var coin: Coin?
    
    var body: some View {
        ZStack {
            if let coin = coin {
                Text(coin.name)
            }
        }
    }
}

struct DetailView: View {
    let coin: Coin
    
//    init(coin: Coin) {
//        self.coin = coin
//    }
    
    var body: some View {
        Text("")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(coin: dev.coin)
    }
}

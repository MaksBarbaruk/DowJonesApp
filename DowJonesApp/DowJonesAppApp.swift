//
//  DowJonesAppApp.swift
//  DowJonesApp
//
//  Created by MaksBarbaruk on 24.10.2022.
//

import SwiftUI

@main
struct DowJonesAppApp: App {
    @StateObject private var vm = HomeViewModel() 
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}

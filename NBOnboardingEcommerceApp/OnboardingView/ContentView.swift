//
//  ContentView.swift
//  NBOnboardingEcommerceApp
//
//  Created by Navnit Baldha on 10/01/24.
//

import SwiftUI


struct ContentView: View {
    @AppStorage(AppStorageKey.currentPage) var currentPage = 1

    var body: some View {
        if currentPage > totalPages {
            HomeView()
        } else {
            WalkthroughScreenView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//
//  HomeView.swift
//  NBOnboardingEcommerceApp
//
//  Created by Navnit Baldha on 10/01/24.
//

import SwiftUI

// Home page...
struct HomeView: View {
    var body: some View {
        Text(Constants.homeScreenTitle)
            .font(.title)
            .fontWeight(.heavy)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

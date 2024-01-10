//
//  WalkthroughScreen.swift
//  NBOnboardingEcommerceApp
//
//  Created by Navnit Baldha on 10/01/24.
//

import SwiftUI

// Walkthrough Screen

struct WalkthroughScreenView: View {

    // for slider animation...
    @AppStorage(AppStorageKey.currentPage) var currentPage = 1

    var body: some View {
        ZStack {

            if currentPage == 1 {
                PageView(
                    image: SystemImageName.image2,
                    title: Constants.title,
                    header: Constants.header1,
                    detail: Constants.detail,
                    bgColor: Color(ColorName.color1))
                .transition(.scale)

            } else if currentPage == 2 {
                PageView(
                    image: SystemImageName.image3,
                    title: Constants.title,
                    header: Constants.header2,
                    detail: Constants.detail,
                    bgColor: Color(ColorName.color2))
                    .transition(.scale)

            } else if currentPage == 3 {
                PageView(
                    image: SystemImageName.image4,
                    title: Constants.title,
                    header: Constants.header3,
                    detail: Constants.detail,
                    bgColor: Color(ColorName.color3))
                    .transition(.scale)
            }
        }
        .overlay(alignment: .bottom) {
            Button {
                // changing views...
                withAnimation(.easeOut) {
                    // checking...

                    if currentPage <= totalPages {
                        currentPage += 1
                    } else {
                        // For App Testing only...
                        currentPage = 1
                    }
                }

            } label: {
                Image(systemName: SystemIconName.chevronRight)
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color(ColorName.secondaryColor))
                    .frame(width: 60, height: 60)
                    .background(Color.white)
                    .clipShape(Circle())

                // Circlular Slider...
                    .overlay(
                        ZStack {
                            Circle()
                                .stroke(Color(ColorName.secondaryColor).opacity(0.04), lineWidth: 4)

                            Circle()
                                .trim(from: 0, to: CGFloat(currentPage) / CGFloat(totalPages))
                                .stroke(Color(ColorName.secondaryColor), lineWidth: 4)
                                .rotationEffect(.init(degrees: -90))
                        }
                        .padding(-15)
                    )
            }
        }
    }
}


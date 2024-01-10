//
//  OnboardingScrollView.swift
//  NBOnboardingEcommerceApp
//
//  Created by Navnit Baldha on 10/01/24.
//

import SwiftUI

struct PageView: View {

    var image: String
    var title: String
    var header: String
    var detail: String
    var bgColor: Color

    @AppStorage(AppStorageKey.currentPage) var currentPage = 1
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                if currentPage == 1 {
                    Text(title)
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(ColorName.secondaryColor))
                        .kerning(1.4)  // Letter Spacing...
                } else {
                    Button {
                        withAnimation(.easeInOut) {
                            currentPage -= 1
                        }
                    } label: {
                        Image(systemName: SystemIconName.chevronLeft)
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                            .padding(.horizontal)
                            .background(Color(ColorName.secondaryColor))
                            .cornerRadius(10)
                    }
                }

                Spacer()

                Button(action: {
                    currentPage = 4
                }) {
                    Text(Constants.skip)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(ColorName.secondaryColor))
                        .kerning(1.2)
                }

            }
            .foregroundColor(Color(ColorName.secondaryColor))
            .padding()

            Spacer(minLength: 0)

            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)

            Text(header)
                .font(.system(size: 16))
                .fontWeight(.bold)
                .padding(.top)
                .foregroundColor(Color(ColorName.secondaryColor))

            Text(detail)
                .font(.system(size: 12))
                .kerning(1.2)
                .multilineTextAlignment(.center)
                .foregroundColor(Color(ColorName.secondaryColor))

            Spacer(minLength: 0)
        }
        .background(bgColor.cornerRadius(10).ignoresSafeArea())
    }
}


struct WalkthroughScreen_Previews: PreviewProvider {
    static var previews: some View {
        WalkthroughScreenView()
    }
}

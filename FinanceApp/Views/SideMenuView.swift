//
//  SideMenuView.swift
//  FinanceApp
//
//  Created by Vitaliy Garasymovych on 11/15/23.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color("DimGray"), .black], startPoint: .top, endPoint: .bottomLeading)
                .ignoresSafeArea()
            VStack {
                // Header
                SideMenuHeaderView(isShowing: $isShowing)
                    .foregroundColor(.white)
                    .frame(height: 240)
                
                Spacer()
                    .frame(height: 64)
                // Option View
                ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                    NavigationLink(
                        destination: Text(option.title),
                        label: {
                            SideMenuOptionView(viewModel: option)
                        })
                }
                Spacer()
            }
        }
        .navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}

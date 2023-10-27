//
//  SplashScreenView.swift
//  FinanceApp
//
//  Created by Vitaliy Garasymovych on 10/26/23.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        ZStack {
            Color("Verdigris")
            if isActive {
                SignUpPage()
            } else {
                VStack {
                    VStack {
                        Image("insolubleslion")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 230, height: 230)
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.2)) {
                            self.size = 0.9
                            self.opacity = 1.0
                        }
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}

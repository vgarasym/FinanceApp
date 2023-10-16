//
//  SignUpPage.swift
//  FinanceApp
//
//  Created by Vitaliy Garasymovych on 10/10/23.
//

import SwiftUI

struct SignUpPage: View {
    @State private var startAnimation: Bool = false
    @State private var showLoginPage: Bool = false
    @State private var showRegistrationPage: Bool = false
    var body: some View {
        NavigationStack {
            ZStack {
                Color("AshGray")
                VStack {
                    VStack {
                        Image("insolubleslion")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                            .padding(.bottom, -20)
                        Text("FinanceApp")
                            .font(.system(size: 60))
                            .fontWeight(.bold)
                            .padding(.bottom, 60)
                            .foregroundColor(.white)
                    }
                    
                    VStack {
                        Button {
                            showLoginPage.toggle()
                        } label: {
                            Text("Sign In")
                                .frame(width: 300, alignment: .center)
                        }
                        .padding()
                        .foregroundColor(.black)
                        .background(Color("Magnolia"))
                        .cornerRadius(20)
                        
                        Button {
                            showRegistrationPage.toggle()
                        } label: {
                            Text("Sign Up")
                                .frame(width: 300, alignment: .center)
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(Color("Verdigris"))
                        .cornerRadius(20)
                    }
                }
            }
            .navigationDestination(isPresented: $showLoginPage) {
                LoginPage()
            }
            .navigationDestination(isPresented: $showRegistrationPage) {
                RegistrationPage()
            }
            .ignoresSafeArea()
        }
    }
}

struct SignUpPage_Previews: PreviewProvider {
    static var previews: some View {
        SignUpPage()
    }
}

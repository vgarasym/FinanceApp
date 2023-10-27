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
                LinearGradient(colors: [Color("DarkGreen"), Color("AshGray")], startPoint: .bottomLeading, endPoint: .topTrailing)
                ZStack {
                    VStack {
                        Spacer()
                        VStack {
                            Image("insolubleslion")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 260, height: 260, alignment: .center)
                        }
                        .padding(.top, 150)
                        VStack {
                            Spacer()
                            VStack {
                                Text("Welcome to the only finance app you will ever need")
                                    .padding()
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(Font.custom("Lato-Black", size: 30))
                                    .padding(.bottom, -20)
                                Text("Easily manage your finances on the best financial app available")
                                    .padding()
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(Font.custom("Lato-Regular", size: 20))
                                    .padding(.bottom, 20)
                            }
                            .foregroundColor(.white)
                            .padding(.leading, 3)
                            Button {
                                showLoginPage.toggle()
                            } label: {
                                Text("Sign In")
                                    .frame(width: 330, alignment: .center)
                            }
                            .padding()
                            .foregroundColor(.black)
                            .background(Color("Magnolia"))
                            .cornerRadius(20)
                            
                            Button {
                                showRegistrationPage.toggle()
                            } label: {
                                Text("Sign Up")
                                    .frame(width: 330, alignment: .center)
                            }
                            .padding()
                            .foregroundColor(.white)
                            .background(Color("Verdigris"))
                            .cornerRadius(20)
                        }
                        .padding(.bottom, 45)
                    }
                }
                .navigationDestination(isPresented: $showLoginPage) {
                    LoginPage()
                }
                .navigationDestination(isPresented: $showRegistrationPage) {
                    RegistrationPage()
                }
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

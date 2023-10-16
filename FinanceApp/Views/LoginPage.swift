//
//  LoginPage.swift
//  FinanceApp
//
//  Created by Vitaliy Garasymovych on 10/10/23.
//

import SwiftUI

struct LoginPage: View {
    @State private var email = ""
    @State private var password = ""
    @State private var login: Bool = false
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(colors:[Color("Verdigris"), Color("Lemon")],
                               startPoint: .topLeading,
                               endPoint: .bottomLeading)
                VStack {
                    VStack {
                        Image("insolubleslion")
                            .resizable()
                            .frame(width: 150, height: 150)
                    }
                    .padding(.top, 80)
                    .padding(.bottom, 0)
                    VStack {
                        TextField("Email Address", text: $email)
                            .keyboardType(.emailAddress)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .textInputAutocapitalization(.never)
                            .padding(.bottom, 10)
                        
                        SecureField("Password", text: $password)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .textInputAutocapitalization(.never)
                    }
                    .padding()
                    Spacer()
                    
                }
                .textFieldStyle(RoundedBorder())
            
                VStack {
                    Button {
                        login.toggle()
                    } label: {
                        Text("Sign In")
                            .frame(maxWidth: .infinity, alignment: .center)
                            .foregroundColor(.white)
                    }
                    .disabled(email.isEmpty || password.isEmpty)
                    .frame(width: 270)
                    .padding()
                    .background(.teal)
                    .cornerRadius(20)
                }
                .padding(.top, 70)
                .navigationDestination(isPresented: $login) {
                    ContentView()
                }
            }
            .ignoresSafeArea()
        }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}


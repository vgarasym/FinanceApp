//
//  RegistrationPage.swift
//  FinanceApp
//
//  Created by Vitaliy Garasymovych on 10/11/23.
//

import SwiftUI


struct RegistrationPage: View {
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var username = ""
    
    var body: some View {
        ZStack {
            LinearGradient(colors:[Color("Bittersweet"), Color("Lemon")],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            VStack {
                VStack {
                    Image("insolubleslion")
                        .resizable()
                        .frame(width: 150, height: 150)
                }
                .padding(.top, 80)
                .padding(.bottom, 5)
                
                VStack {
                    TextField("Email Address", text: $email)                       .frame(maxWidth: .infinity, alignment: .center)
                        .textInputAutocapitalization(.never)
                        .padding(.bottom, 10)
                    
                    TextField("Username", text: $username)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .textInputAutocapitalization(.never)
                        .padding(.bottom, 10)
                    
                    SecureField("Password", text: $password)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .textInputAutocapitalization(.never)
                        .padding(.bottom, 10)
                    
                    SecureField("Confirm Password", text: $confirmPassword)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .textInputAutocapitalization(.never)
                }
                .padding()
                Spacer()
            }
            .textFieldStyle(RoundedBorder())
        }
        .ignoresSafeArea()
    }
}

struct RegistrationPage_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationPage()
    }
}


struct RoundedBorder: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding()
            .background(.white)
            .cornerRadius(20)
            .shadow(color: .black, radius: 4)
    }
}

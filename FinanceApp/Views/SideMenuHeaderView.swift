//
//  SideMenuHeaderView.swift
//  FinanceApp
//
//  Created by Vitaliy Garasymovych on 11/15/23.
//

import SwiftUI

struct SideMenuHeaderView: View {
    @Binding var isShowing: Bool
    var body: some View {
        VStack (alignment: .leading) {
            
            Spacer()
                .frame(height: 64)
            
            Button(action: {                         withAnimation(.spring()) {
                isShowing.toggle()
            }}, label: {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.bottom, -16)
                    .padding(.top, 32)
            })
        
            
            VStack (alignment: .leading){
                Image("insolubleslion")
                    .resizable()
                    .scaledToFit()
                    .clipped()
                    .frame(width: 92, height: 93)
                    .clipShape(Circle())
                    .padding(.bottom, 16)
                
                Text("Vitaliy Garasymovych")
                    .font(.system(size: 24, weight: .semibold))
                
                Text("@eleqtrick")
                    .font(.system(size: 14))
                    .padding(.bottom, 32)
                
                HStack(spacing: 12) {
                    HStack(spacing: 4) {
                        Text("6,969").bold()
                        Text("Following")
                    }
                    HStack(spacing: 4) {
                        Text("12,000").bold()
                        Text("Followers")
                    }
                    Spacer()
                }
                .padding(.bottom, 32)
                Spacer()
            }
            .padding()
        }
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
    }
}

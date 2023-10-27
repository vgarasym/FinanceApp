//
//  ContentView.swift
//  FinanceApp
//
//  Created by Vitaliy Garasymovych on 10/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.black, .gray], startPoint: .bottomLeading, endPoint: .topTrailing)
            VStack {
                HStack {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                .font(.system(size: 30))
                .padding(.horizontal, 20)
                .padding(.vertical, 60)
                Spacer()
                
                ZStack {
                    Rectangle()
                        .fill(.white)
                        .frame(width: 390, height: 450)
                        .cornerRadius(20)
                    VStack {
                        Text("Placeholder")
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding(.bottom, 350)
                            .padding()
                            .font(.title)
                    }
                }
            }
        }
        .navigationBarBackButtonHidden()
        .ignoresSafeArea()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

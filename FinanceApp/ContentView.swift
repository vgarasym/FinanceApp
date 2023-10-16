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
            Color(.black)
            VStack {
                HStack {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "person.fill")
                    }
                }
                .foregroundColor(.white)
                .font(.system(size: 24))
                .padding(.horizontal, 20)
                .padding(.vertical, 80)
                Spacer()
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

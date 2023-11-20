//
//  ContentView.swift
//  FinanceApp
//
//  Created by Vitaliy Garasymovych on 10/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowing = false
    var body: some View {
        NavigationView {
            ZStack {
                if isShowing {
                    SideMenuView(isShowing: $isShowing)
                }
                HomeView()
                    .offset(x: isShowing ? 300 : 0, y:0)
                    .navigationBarItems(leading: Button(action: {
                        withAnimation(.spring()) {
                            isShowing.toggle()
                        }
                    }, label: {Image(systemName: "line.3.horizontal")
                            .foregroundColor(.white)
                            .font(.system(size: 21))
                    }))
            }
            .onAppear {
                isShowing = false
            }
        }
        .navigationBarBackButtonHidden()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.black, .gray], startPoint: .bottomLeading, endPoint: .topTrailing)
            VStack {
                Spacer()
                
                ZStack {
                    Rectangle()
                        .fill(.white)
                        .frame(width: 390, height: 450)
                        .cornerRadius(20)
                    VStack {
                        Text("News")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.bottom, 350)
                            .padding()
                            .font(.title)
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}

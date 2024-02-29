//
//  ContentView.swift
//  DaySyncIOS
//
//  Created by Nils Zentgraf on 29.02.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [Color("CustomBlue"), Color.white]),
            startPoint: .bottom,
            endPoint: .top
        )
        .edgesIgnoringSafeArea(.bottom)
        .overlay(
            ZStack{
                RootView()
            }
                .preferredColorScheme(.light)
        )
        
    }
}

#Preview {
    ContentView()
}

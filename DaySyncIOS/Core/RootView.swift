//
//  RootView.swift
//  DaySyncIOS
//
//  Created by Nils Zentgraf on 29.02.24.
//

import SwiftUI

struct RootView: View {
    @State private var tabSelection = 1
    
    var body: some View {
        TabView(selection: $tabSelection) {
            HomeView()
                .tag(1)
            
            Text("Hallos")
                .tag(2)
            
            Text("Sheet")
                .tag(3)
            
            Text("Tab Content 3")
                .tag(4)
            
            Text("Tab Content 4")
                .tag(5)
            
        }
        .edgesIgnoringSafeArea(.bottom)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .overlay(alignment: .bottom){
            CustomTabView(tabSelection: $tabSelection)
        }
    }
}

#Preview {
    RootView()
}

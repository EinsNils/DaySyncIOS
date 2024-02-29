//
//  CustomTabView.swift
//  DaySyncIOS
//
//  Created by Nils Zentgraf on 29.02.24.
//

import SwiftUI

struct CustomTabView: View {
    
    @Binding var tabSelection: Int
    @Namespace private var animationNamespace
    
    let tabBarItems: [(image: String, title: String)] = [
        ("house.fill", ""),
        ("calendar", ""),
        ("plus", ""),
        ("person.circle", ""),
        ("gear", ""),
    ]
    
    var body: some View {
        ZStack{
            Capsule()
                .frame(height: 80)
                .foregroundStyle(.white)
                .shadow(radius: 2)
            
            HStack{
                ForEach(0..<tabBarItems.count){ index in
                    Button(action: {
                        tabSelection = index + 1
                    }, label: {
                        VStack(spacing: 16) {
                            Spacer()
                            
                            Image(systemName: tabBarItems[index].image)
                                .imageScale(.large)
                                
                            
                            if index + 1 == tabSelection{
                                Capsule()
                                    .frame(height: 8)
                                    .foregroundStyle(.clear)
                                    .matchedGeometryEffect(id: "SelectedTabId",
                                                           in: animationNamespace)
                                    .offset(y: 3)
                            } else{
                                Capsule()
                                    .frame(height: 8)
                                    .foregroundStyle(.clear)
                                    .offset(y: 3)
                            }
                        }
                        .foregroundStyle(index + 1 == tabSelection ? Color("CustomLila"): .gray)
                    })
                }
            }
            .frame(height: 80)
            .clipShape(Capsule())
        }
        .padding(.horizontal)
    }
}

#Preview {
    CustomTabView(tabSelection: .constant(1))
        .previewLayout(.sizeThatFits)
        .padding(.vertical)
}

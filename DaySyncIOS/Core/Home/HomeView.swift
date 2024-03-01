//
//  HomeView.swift
//  DaySyncIOS
//
//  Created by Nils Zentgraf on 29.02.24.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedOption = "Option 1"
    let options = ["Today", "Today", "Today", "Today", "Today"]
    
    @State private var selection = "All tasks"
    let colors = ["All tasks", "In progress", "Completed"]
    
    var body: some View {
        
        ScrollView(showsIndicators: false){
            VStack{
                //MARK: Header
                HStack{
                    VStack(alignment: .leading) {
                        Text("Good morining Nils!")
                            .foregroundStyle(.black.opacity(0.5))
                            .font(.callout)
                        Text("21 Sept, 2023")
                            .font(.title3.bold())
                    }
                    
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "bell.fill")
                            .imageScale(.large)
                            .bold()
                            .foregroundStyle(.black)
                    })
                }
                .padding()
                
                //MARK: Summary
                VStack{
                    HStack{
                        Text("Summary")
                            .font(.title2.bold())
                        Spacer()
                        
                        Menu {
                            Button {
                            } label: {
                                Label("New Album", systemImage: "rectangle.stack.badge.plus")
                            }
                            Button {
                            } label: {
                                Label("New Folder", systemImage: "folder.badge.plus")
                            }
                            Button {
                            } label: {
                                Label("New Shared Album", systemImage: "rectangle.stack.badge.person.crop")
                            }
                        } label: {
                            
                            HStack{
                                Text("Today")
                                    .foregroundStyle(.gray)
                                    .font(.caption)
                                Image(systemName: "chevron.down")
                                    .foregroundStyle(.black)
                            }
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.gray ,lineWidth: 1)
                                    .frame(width: 100, height: 30)
                            )
                        }
                        .padding()
                        
                    }
                    
                    HStack{
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.gray, lineWidth: 1)
                            .overlay (
                                VStack(alignment: .leading) {
                                    Text("Completed tasks")
                                        .foregroundStyle(.black.opacity(0.5))
                                    Text("31")
                                        .font(.title2.bold())
                                        .foregroundStyle(Color("CustomLila"))
                                }
                                    .frame(maxWidth: .infinity, alignment: .leading) // Ausrichtung nach links
                                    .padding()
                            )
                        
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.gray, lineWidth: 1)
                            .overlay (
                                VStack(alignment: .leading) {
                                    Text("Completed tasks")
                                        .foregroundStyle(.black.opacity(0.5))
                                    Text("31")
                                        .font(.title2.bold())
                                        .foregroundStyle(Color("CustomLila"))
                                }
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding()
                            )
                    }
                    .frame(height: 83)
                }
                .padding(.horizontal)
                
                VStack(alignment: .leading) {
                    Text("Today tasks")
                        .font(.title2.bold())
                    
                    Picker("Select a paint color", selection: $selection) {
                        ForEach(colors, id: \.self) {
                            Text($0)
                                .background(.red)
                        }
                    }
                    .pickerStyle(.segmented)
                    
                    VStack{
                        
                        
                        ForEach(0..<4){index in
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.gray, lineWidth: 1)
                                .background(.white)
                                .frame(height: 134)
                                .overlay(
                                    
                                    VStack(alignment: .leading) {
                                        Text("Homepage Redesign")
                                            .bold()
                                        Text("Redesign the homepage of our website to improve user engagement and align with our updated branding guidelines. Focus on creating an intuitive user interface with enhanced visual appeal.")
                                            .font(.caption)
                                            .lineLimit(2)
                                            .foregroundStyle(.black.opacity(0.5))
                                        
                                        Spacer()
                                        
                                        HStack(alignment: .lastTextBaseline) {
                                            VStack(alignment: .leading, spacing: 5) {
                                                Text("\(Image(systemName: "newspaper.fill")) App Development")
                                                Text("\(Image(systemName: "stopwatch")) October 15, 2023")
                                            }
                                            .font(.caption2)
                                            
                                            Spacer()
                                            
                                            Capsule()
                                                .fill(Color("CustomLila").opacity(0.1))
                                                .frame(width: 76, height: 29)
                                                .overlay(
                                                    Text("New tasks")
                                                        .font(.caption2)
                                                        .foregroundStyle(Color("CustomLila"))
                                                        .bold()
                                                )
                                        }
                                    }
                                        .padding()
                                    
                                )
                        }
                        
                        
                    }
                }
                .padding()
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}
#Preview {
    HomeView()
}

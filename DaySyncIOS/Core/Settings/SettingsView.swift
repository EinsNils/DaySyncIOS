//
//  SettingsView.swift
//  DaySyncIOS
//
//  Created by Nils Zentgraf on 23.03.24.
//

import SwiftUI

struct SettingsView: View {
    
    @AppStorage("selectedAppearance") var selectedAppearance = 0
    @State private var fontSize: CGFloat = 15
    let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String
    
    var body: some View {
        NavigationStack {
            Form {
                HStack{
                    Text("App Version:")
                    Text(String(describing: appVersion))
                }
     
                Picker("Color Scheme", selection: $selectedAppearance) {
                    Text("Default System")
                        .tag(0)
                    Text("Light")
                        .tag(1)
                    Text("Dark")
                        .tag(2)
                }
                .pickerStyle(.inline)
                
                Section("Notes Font Size \(Int(fontSize))") {
                    Slider(value: $fontSize, in: 10...40, step: 1) {
                        Text("Point Size \(Int(fontSize))")
                    }
                }
                
                Section("Account") {
                    Button(action: {
                        print("Test")
                    }, label: {
                        Text("Abmelden")
                    })
                    
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Account löschen")
                            .foregroundStyle(.red)
                    })

                }
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingsView()
}



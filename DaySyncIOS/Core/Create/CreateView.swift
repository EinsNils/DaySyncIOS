//
//  CreateView.swift
//  DaySyncIOS
//
//  Created by Nils Zentgraf on 01.03.24.
//

import SwiftUI

struct CreateView: View {
    @State private var title: String = ""
    @State private var caption: String = ""
    @State private var dueDate: Date = Date()
    @State private var tint: Color = .blue
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Task Details")
                .font(.headline)
            TextField("Title", text: $title)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Caption", text: $caption)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            DatePicker("Due Date", selection: $dueDate)
                .datePickerStyle(DefaultDatePickerStyle())
            
            Text("Appearance")
                .font(.headline)
            ColorPicker("Task Color", selection: $tint)
            
            Button(action: {
                // Hier kannst du die Logik hinzufügen, um die Aufgabe zu erstellen
                let newTask = TaskModel(title: title, caption: caption, date: dueDate, tint: tint)
                // Füge die neue Aufgabe deiner Datenquelle hinzu oder mache, was auch immer notwendig ist.
                print("Task created: \(newTask)")
            }) {
                Text("Create Task")
                    .foregroundColor(.white)
                    .padding()
                    .background(tint)
                    .cornerRadius(8)
            }
            .padding()
        }
        .padding()
    }
}


#Preview {
    CreateView()
}

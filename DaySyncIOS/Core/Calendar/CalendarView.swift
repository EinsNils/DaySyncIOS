//
//  CalendarView.swift
//  DaySyncIOS
//
//  Created by Nils Zentgraf on 01.03.24.
//

import SwiftUI

struct CalendarView: View{
    
    @State private var selectedDate: Date = Date()

    var body: some View {
        VStack {

            DatePicker("Select a date", selection: $selectedDate, displayedComponents: .date)
                .datePickerStyle(GraphicalDatePickerStyle())
                .padding()

            // Hier kannst du deinen Kalender implementieren
            Text("Calendar goes here...")
                .padding()
        }
    }

    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
}
#Preview {
    CalendarView()
}

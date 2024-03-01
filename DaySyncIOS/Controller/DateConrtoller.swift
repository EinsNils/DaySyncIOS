//
//  DateConrtoller.swift
//  DaySyncIOS
//
//  Created by Nils Zentgraf on 01.03.24.
//

import Foundation

extension Data{
    
    static func updateHour(_ value: Int) -> Date{
        let calendar = Calendar.current
        return calendar.date(byAdding: .hour, value: value, to: .init()) ?? .init()
    }
    
    func format(_ format: String) -> String{
        let formatter = DateFormatter()
        formatter.dateFormat = format
        
        return formatter.string(from: .init())
    }
    
}

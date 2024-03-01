//
//  TaskModel.swift
//  DaySyncIOS
//
//  Created by Nils Zentgraf on 01.03.24.
//

import SwiftUI

struct TaskModel: Identifiable{
    var id: UUID = .init()
    var title: String
    var caption: String
    var date: Date = .init()
    var isCompleted = false
    var tint: Color
}



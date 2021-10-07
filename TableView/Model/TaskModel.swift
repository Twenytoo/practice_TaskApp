//
//  TaskModel.swift
//  TableView
//
//  Created by Артём on 07.10.2021.
//

import Foundation

class Task {
    var title: String
    var description: String
    var id: String
    var isActive: Bool
    
    init(title: String, description: String, isActive: Bool) {
        self.title = title
        self.description = description
        self.id = UUID().uuidString
        self.isActive = isActive
    }
}

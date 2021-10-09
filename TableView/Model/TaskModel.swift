//
//  TaskModel.swift
//  TableView
//
//  Created by Артём on 07.10.2021.
//

import Foundation

class Task: Codable {
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

// MARK: - UserDefaults -
extension Task{
    
    static let userDefaultsKey = "TasksKey"
    
    static func save (_ tasks: [Task]){
        let data = try? JSONEncoder().encode(tasks)
        UserDefaults.standard.set(data, forKey: userDefaultsKey)
    }
    
    static func loadTask()->[Task]{
        var returnValue: [Task] = []
        
        if let data = UserDefaults.standard.data(forKey: Task.userDefaultsKey),
           let tasks = try? JSONDecoder().decode([Task].self, from: data){
            
                returnValue = tasks
        }
        
        return returnValue
    }
}

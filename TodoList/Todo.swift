//
//  Todo.swift
//  TodoList
//
//  Created by Yin Jie Soon on 13/9/21.
//

import Foundation

struct Todo: Identifiable {
    
    var id = UUID()
    var title: String
    var isCompleted = false
    
}

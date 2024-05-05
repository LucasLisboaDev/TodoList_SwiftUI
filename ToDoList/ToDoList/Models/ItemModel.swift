//
//  ItemModel.swift
//  ToDoList
//
//  Created by Lucas Lisboa  on 5/4/24.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
    
}

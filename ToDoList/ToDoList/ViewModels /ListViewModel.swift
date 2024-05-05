//
//  ListViewModel.swift
//  ToDoList
//
//  Created by Lucas Lisboa  on 5/5/24.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    func getItems(){
        let newItems = [
            ItemModel(title: " This is the first Title", isCompleted: false),
            ItemModel(title: "This is the second Title", isCompleted: true),
            ItemModel(title: "third", isCompleted: false)]
    items.append(contentsOf: newItems)
}
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
}

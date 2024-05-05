//
//  ListView.swift
//  ToDoList
//
//  Created by Lucas Lisboa  on 5/4/24.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var listViewModel: ListViewModel
    
    
    var body: some View {
        List{
            ForEach(listViewModel.items){
                item in
                ListRowView(item: item)
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform:listViewModel.moveItem)
            
        }.navigationTitle("Todo List 📝")
            .navigationBarItems(leading: EditButton(),
                                trailing: NavigationLink("add", destination: AddView()))
    }
    
}

#Preview {
    NavigationView{
        ListView()
    }.environmentObject(ListViewModel())
    
}




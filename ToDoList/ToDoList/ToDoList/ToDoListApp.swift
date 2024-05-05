//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Lucas Lisboa  on 5/4/24.
//

import SwiftUI

/* MVVM Architecture

 Model - data point
 View- UI
 ViewModel - manages Models for View
 
 
 */
@main
struct ToDoListApp: App {
    
   @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewModel)
          
        }
    }
}

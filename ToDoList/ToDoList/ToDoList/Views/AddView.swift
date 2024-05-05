//
//  AddView.swift
//  ToDoList
//
//  Created by Lucas Lisboa  on 5/4/24.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    @State var alertTitle: String = " "
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type something here.", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.gray)
                    .cornerRadius(10)
                
                Button(action: saveButtomPressed, label: {
                    Text("Save".uppercased()).foregroundColor(.white)
                        .frame(height:55)
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                    
                })
            }.padding(14)
        }.navigationTitle(" Add an Item 🖊️")
            .alert(isPresented: $showAlert, content: getAlert )
    }
    func saveButtomPressed(){
        if textIsAppropriate(){
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss() }
        
        
    }
    func textIsAppropriate() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = " Your new Todo item must be at least 3 characters long.😱😰  "
            showAlert.toggle()
            return false
        }
        return true
    }
    func getAlert() -> Alert {
        return Alert ( title: Text(alertTitle))
    }
}

#Preview {
    NavigationView{
        AddView()
    }.environmentObject(ListViewModel())
}

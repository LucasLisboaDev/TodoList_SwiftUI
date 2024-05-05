//
//  AddView.swift
//  ToDoList
//
//  Created by Lucas Lisboa  on 5/4/24.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type something here.", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.gray)
                .cornerRadius(10)
                
                Button(action: { }, label: {
                    Text("Save".uppercased()).foregroundColor(.white)
                        .frame(height:55)
                        .font(.headline)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                    
                })
            }.padding(14)
        }.navigationTitle(" Add an Item 🖊️")
    }
}

#Preview {
    NavigationView{
        AddView()
    }
}

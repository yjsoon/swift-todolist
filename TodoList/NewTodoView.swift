//
//  NewTodoView.swift
//  TodoList
//
//  Created by YJ Soon on 27/9/21.
//

import SwiftUI

struct NewTodoView: View {
    
    @State var todoText = ""
    @Binding var todos: [Todo]
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Enter a todo", text: $todoText)
                Button("Add todo") {
                    todos.append(Todo(title: todoText))
                    presentationMode.wrappedValue.dismiss()
                }
            }
            .navigationTitle("Add todo")
        }
    }
}

struct NewTodoView_Previews: PreviewProvider {
    static var previews: some View {
        NewTodoView(todos: .constant([]))
    }
}

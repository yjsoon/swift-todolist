//
//  ListOfTodosView.swift
//  TodoList
//
//  Created by Yin Jie Soon on 20/9/21.
//

import SwiftUI

struct ListOfTodosView: View {
    
    @Binding var todos: [Todo]
    var showCompleted = false
    
    var body: some View {
        ForEach(todos.filter { $0.isCompleted == showCompleted }) { todo in
            HStack {
                Image(systemName: todo.isCompleted ? "checkmark.circle.fill" : "circle")
                Text(todo.title)
                    .strikethrough(todo.isCompleted)
                    .foregroundColor(todo.isCompleted ? .gray : .black)
            }
            .onTapGesture {
                let todoIndex = todos.firstIndex {
                    $0.id == todo.id
                }!
                todos[todoIndex].isCompleted.toggle()
            }
        }
        .onDelete { indexSet in
            todos.remove(atOffsets: indexSet)
        }

    }
}

struct ListOfTodosView_Previews: PreviewProvider {
    static var previews: some View {
        ListOfTodosView(todos: .constant([
            Todo(title: "Walk the cow"),
            Todo(title: "Have a drink")
        ]))
    }
}

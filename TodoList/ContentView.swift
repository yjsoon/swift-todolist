//
//  ContentView.swift
//  TodoList
//
//  Created by Yin Jie Soon on 13/9/21.
//

import SwiftUI

struct ContentView: View {
    @State var todos = [
        Todo(title: "Feed the animals", isCompleted: true),
        Todo(title: "Water the cat"),
        Todo(title: "Walk the plants")
    ]
    
    var body: some View {
        // NavigationView
        // List .navigationTitle
        // Text
        NavigationView {
            List(todos) { todo in
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
            .navigationTitle("Todos")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

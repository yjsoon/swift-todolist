//
//  ContentView.swift
//  TodoList
//
//  Created by Yin Jie Soon on 13/9/21.
//

import SwiftUI

struct ContentView: View {
    @State var todos = [
        Todo(title: "Feed the animals"),
        Todo(title: "Water the cat"),
        Todo(title: "Walk the plants")
    ]
    
    var body: some View {
        // NavigationView
        // List .navigationTitle
        // Text
        NavigationView {
            List(todos) { todo in
                Text(todo.title)
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

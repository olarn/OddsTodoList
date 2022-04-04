//
//  Todo.swift
//  OddsTodolist
//
//  Created by Olarn U. on 4/4/2565 BE.
//

import Foundation

struct Todo {
    var details = ""
    var todoType = TodoType.todo
    var createDate = Date()
    var dueDate = Date()
    var isDone = false
}

enum TodoType {
    case todo
    case shoppingList
    case jobs
    case remind
}

class TodoStore {
    private init() {}
    
    private static var todoList: [Todo] = []
    
    static func get() -> [Todo] {
        return todoList
    }
    
    static func save(todoList: [Todo]) {
        self.todoList = todoList
    }
    
    static func add(todo: Todo) {
        todoList.append(todo)
    }
}

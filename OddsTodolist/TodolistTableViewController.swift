//
//  TodolistTableViewController.swift
//  OddsTodolist
//
//  Created by Olarn U. on 4/4/2565 BE.
//

import UIKit

class TodolistTableViewController: UITableViewController {
    
    var todoList: [Todo] {
        get {
            TodoStore.get()
        }
        set {
            TodoStore.save(todoList: newValue)
            tableView.reloadData()
        }
    }
    
    @IBAction func buttonAddTapped(_ sender: Any) {
        let newIndex = todoList.count + 1
        var newTodo = Todo()
        newTodo.details = "item \(newIndex)"
        todoList.append(newTodo)
    }
}

// MARK: - Todo Item view delegate callback handler

extension TodolistTableViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard
            let viewController = segue.destination as? TodoItemTableViewController
        else { return }
        
        viewController.delegate = self
        
        if segue.identifier == "add" {
            
        }
        
        if segue.identifier == "show" {
            
        }
    }
}

// MARK: - Todo Item view delegate callback handler

extension TodolistTableViewController: TodoItemTableViewControllerDelegate {
    func whenSavedTodoItem(todoItem: Todo) {
        todoList.append(todoItem)
    }
}

//
//  TodoItemTableViewController.swift
//  OddsTodolist
//
//  Created by Olarn U. on 4/4/2565 BE.
//

import UIKit

protocol TodoItemTableViewControllerDelegate: AnyObject {
    func whenSavedTodoItem(todoItem: Todo)
}

class TodoItemTableViewController: UITableViewController {

    weak var delegate: TodoItemTableViewControllerDelegate?
    
    var todo: Todo? = nil
    
    @IBOutlet weak var todoTypePickerView: UIPickerView!
    @IBOutlet weak var detailsTextField: UITextView!
    @IBOutlet weak var dueDatePickerView: UIDatePicker!
    @IBOutlet weak var doneSwitch: UISwitch!

    @IBAction func saveButtonTapped(_ sender: Any) {
        todo = Todo()
        todo?.details = detailsTextField.text
        todo?.todoType = .todo
        todo?.createDate = Date()
        todo?.dueDate = dueDatePickerView.date
        todo?.isDone = doneSwitch.isOn
        
        if let newTodo = todo {
            delegate?.whenSavedTodoItem(todoItem: newTodo)
        }
        
        navigationController?.popViewController(animated: true)
    }
}

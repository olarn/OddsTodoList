//
//  TodolistTableViewController+Datasource.swift
//  OddsTodolist
//
//  Created by Olarn U. on 4/4/2565 BE.
//

import UIKit

// MARK: - Table view data source

extension TodolistTableViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath)
        let item = todoList[indexPath.row].details
        cell.textLabel?.text = item
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedItem: Todo = todoList[indexPath.row]
        print(selectedItem)
    }
}


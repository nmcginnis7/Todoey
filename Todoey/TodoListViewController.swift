//
//  ViewController.swift
//  Todoey
//
//  Created by Nick McGinnis on 1/1/19.
//  Copyright © 2019 Nick McGinnis. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Get Food", "Clean Car", "Go To Work"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK - Tableview Datasource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    //MARK - Tableview Delegate Methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        let accessoryType = tableView.cellForRow(at: indexPath)?.accessoryType
        tableView.cellForRow(at: indexPath)?.accessoryType = accessoryType == .checkmark ? .none : .checkmark
        
        tableView.deselectRow(at: indexPath, animated: true)
    }

}

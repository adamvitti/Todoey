//
//  TodoListViewController.swift
//  Todoey
//
//  Created by Adam Vitti on 5/22/20.
//  Copyright © 2020 AdamVitti. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Buy Milk", "Get ammo", "get masks"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        // Do any additional setup after loading the view.
    }
  
//Table View Data Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        
        
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
//Table View Delegate Methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        print(itemArray[indexPath.row])
    
    //Copies item text to clipboard
        UIPasteboard.general.string = itemArray[indexPath.row]
    
    //Adds check marks to selected items
        if( tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark){
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }else{
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
    //dehighlights
        tableView.deselectRow(at: indexPath, animated: true)
       
        
        
    }

}

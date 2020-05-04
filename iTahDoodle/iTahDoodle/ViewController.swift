//
//  ViewController.swift
//  iTahDoodle
//
//  Created by Edgar Ruiz on 02/05/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var itemTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    let todoList = TodoList()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.dataSource = todoList
    }//viewDidLoad

    @IBAction func addButtonPressed(_ sender: UIButton) {
        guard let todo = itemTextField.text else {
            return
        }
        todoList.add(todo)
        tableView.reloadData()
    }//addButtonPressed

}//ViewController


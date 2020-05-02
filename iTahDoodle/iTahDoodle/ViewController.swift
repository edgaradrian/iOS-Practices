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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addButtonPressed(_ sender: UIButton) {
        print("Add to-do item: \(itemTextField.text)")
    }

}//ViewController


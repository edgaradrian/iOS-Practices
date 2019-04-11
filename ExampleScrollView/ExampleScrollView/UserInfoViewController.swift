//
//  UserInfoViewController.swift
//  ExampleScrollView
//
//  Created by Edgar Adrián on 4/11/19.
//  Copyright © 2019 Edgar Adrián. All rights reserved.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }//viewDidLoad
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer){
        self.view.endEditing(true)
    }//
    
}//UserInfoViewController

//
//  MainViewController.swift
//  ExampleScrollView
//
//  Created by Edgar Adrián on 4/11/19.
//  Copyright © 2019 Edgar Adrián. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }//viewDidLoad
    
    @IBAction func clickedButton(_ sender: UIButton) {
        performSegue(withIdentifier: "showDetail", sender: self)
    }//clickedButton
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "showDetail":
            let userInfoVC = segue.destination as! UserInfoViewController
        default:
            preconditionFailure("No correct name segue")
        }//switch
    }//prepareForSegue
    
}//MainViewController

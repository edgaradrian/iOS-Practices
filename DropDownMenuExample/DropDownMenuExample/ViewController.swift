//
//  ViewController.swift
//  DropDownMenuExample
//
//  Created by Edgar Ruiz on 28/07/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var button = DropDownButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.customButton()
    
    }//viewDidLoad
    
    private func customButton() {
        button = DropDownButton.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        button.setTitle("Colors", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(button)
        
        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
    }//customButton


}//ViewController


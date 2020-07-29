//
//  DropDownView.swift
//  DropDownMenuExample
//
//  Created by Edgar Ruiz on 28/07/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import UIKit

class DropDownView: UIView {
    
    var dropDownOptions = [String]()
    var tableView = UITableView()
    var delegate: DropDownProtocol!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.gray
        tableView.backgroundColor = UIColor.gray
        tableView.delegate = self
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(tableView)
        
        tableView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
    }//init
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }//init?
      
}//class DropDownView

extension DropDownView: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }//numberOfSections
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dropDownOptions.count
    }//numberOfRowsInSection
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = dropDownOptions[indexPath.row]
        cell.backgroundColor = UIColor.gray
        return cell
    }//cellForRowAt
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.delegate.dropDownButtonPressed(value: dropDownOptions[indexPath.row])
        self.tableView.deselectRow(at: indexPath, animated: true)
    }//didSelectRowAt
    
}//extension DropDownView

//
//  DropDownButton.swift
//  DropDownMenuExample
//
//  Created by Edgar Ruiz on 28/07/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import UIKit

class DropDownButton: UIButton {
    
    var dropDownView = DropDownView()
    var heightConstraint = NSLayoutConstraint()
    var isOpen = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.gray
        
        dropDownView = DropDownView.init(frame: CGRect.init(x: 0, y: 0, width: 0, height: 0))
        dropDownView.translatesAutoresizingMaskIntoConstraints = false
 
    }//init
    
    override func didMoveToSuperview() {
        self.superview?.addSubview(dropDownView)
        self.superview?.bringSubviewToFront(dropDownView)
        dropDownView.topAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        dropDownView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        dropDownView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        heightConstraint = dropDownView.heightAnchor.constraint(equalToConstant: 0)
    }//didMoveToSuperview
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }//init? coder
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if self.isOpen {
            self.isOpen = false
            NSLayoutConstraint.deactivate([self.heightConstraint])
            self.heightConstraint.constant = 0
            NSLayoutConstraint.activate([self.heightConstraint])
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
                self.dropDownView.center.y -= self.dropDownView.frame.height / 2
                self.dropDownView.layoutIfNeeded()
            }, completion: nil)
        } else {
            self.isOpen = true
            NSLayoutConstraint.deactivate([self.heightConstraint])
            
            let tableHeight = self.dropDownView.tableView.contentSize.height
            if  tableHeight > 150 {
                self.heightConstraint.constant = 150
            } else {
                self.heightConstraint.constant = tableHeight
            }
            
            NSLayoutConstraint.activate([self.heightConstraint])
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
                self.dropDownView.layoutIfNeeded()
                self.dropDownView.center.y += self.dropDownView.frame.height / 2
            }, completion: nil)
        }
    }
    
}//DropDownButton

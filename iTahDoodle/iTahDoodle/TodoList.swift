//
//  TodoList.swift
//  iTahDoodle
//
//  Created by Edgar Ruiz on 02/05/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import UIKit

class TodoList: NSObject {
    fileprivate var items: [String] = []
    
    func add(_ item: String){
        items.append(item)
    }//add
    
}//TodoList

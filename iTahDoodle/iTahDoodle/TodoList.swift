//
//  TodoList.swift
//  iTahDoodle
//
//  Created by Edgar Ruiz on 02/05/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import UIKit

class TodoList: NSObject {
    
    private let fileURL: URL = {
        let documentDirectoryURLs = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        var documentDirectoryURL = documentDirectoryURLs.first!
        return documentDirectoryURL.appendingPathComponent("todolist.items")
    }()//fileURL
    
    fileprivate var items: [String] = []
    
    func saveItems() {
        let itemArray = items as NSArray
        
        print("Saving items to \(fileURL)")
        if !itemArray.write(to: fileURL, atomically: true) {
            print("Could not save to-do list")
        }
        
    }//saveItems
    
    func add(_ item: String){
        items.append(item)
        saveItems()
    }//add
    
}//TodoList

extension TodoList: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }//numberOfRowsInSection
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let item = items[indexPath.row]
        
        cell.textLabel?.text = item

        return cell
        
    }//cellForRowAt
    
}//extensión TableViewDataSource

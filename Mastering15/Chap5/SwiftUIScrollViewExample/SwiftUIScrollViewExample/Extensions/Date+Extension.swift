//
//  Date+Extension.swift
//  SwiftUIScrollViewExample
//
//  Created by Edgar Adrián on 17/11/23.
//

import Foundation

extension Date {
    
    static func getCurrentDate() -> String {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy HH:mm:ss"
        return dateFormatter.string(from: Date())
        
    }//getCurrentDate
    
}//extension Date

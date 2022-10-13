//
//  Date+Extensions.swift
//  SwiftUIPersonalFinance
//
//  Created by Edgar Adrián on 13/10/22.
//

import Foundation

extension Date {
    
    static var today: Date {
        return Date()
    }//today
    
    static var yesterday: Date {
        return Calendar.current.date(byAdding: .day, value: -1, to: Date())!
    }//yesterday
    
    static var tomorrow: Date {
        return Calendar.current.date(byAdding: .day, value: 1, to: Date())!
    }//tomorrow
    
    var month: Int {
        return Calendar.current.component(.month, from: self)
    }//month
    
    static func fromString(string: String, with format: String = "yyyy-MM-dd") -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.date(from: string)
    }//fromString
    
    func string(with format: String = "dd/MM/yyyy") -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }//string
    
}//Date

//
//  NumberFormatter.swift
//  SwiftUIPersonalFinance
//
//  Created by Edgar Adrián on 13/10/22.
//

import Foundation

extension NumberFormatter {
    
    static func currency(from value: Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        
        let formattedValue = formatter.string(from: NSNumber(value: value)) ?? ""
        
        return "$" + formattedValue
    }//currency
    
}//NumberFormatter


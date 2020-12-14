//
//  Double+Extensions.swift
//  MVVMBankApp
//
//  Created by Edgar Adrián on 13/12/20.
//

import Foundation

extension Double {
    
    func formatAsCurrency() -> String {
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        let formattedCurrency = formatter.string(from: self as NSNumber)
        return formattedCurrency ?? ""
        
    }//formatAsCurrency
    
}

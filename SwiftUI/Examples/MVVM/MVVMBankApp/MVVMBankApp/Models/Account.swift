//
//  Account.swift
//  MVVMBankApp
//
//  Created by Edgar Adrián on 14/12/20.
//

import Foundation

enum AccountType: String, Codable, CaseIterable {
    case checking
    case saving
}//AccountType

extension AccountType {
    
    var title: String {
        switch self {
        case .checking:
            return "Checking"
        case .saving:
            return "Saving"
        }
    }
    
}//AccountType extension

struct Account: Codable {
    
    var id: UUID
    var name: String
    let accountType: AccountType
    var balance: Double
    
}//Account

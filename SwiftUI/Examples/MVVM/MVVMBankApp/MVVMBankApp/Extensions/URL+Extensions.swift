//
//  URL+Extensions.swift
//  MVVMBankApp
//
//  Created by Edgar Adrián on 14/12/20.
//

import Foundation

extension URL {
    
    static func urlForAccounts() -> URL? {
        return URL(string: "https://sugar-cherry-stick.glitch.me/api/accounts")
    }//urlForAccounts
    
    static func urlForCreateAccounts() -> URL? {
        return URL(string: "")
    }//urlForCreateAccounts
    
}//URL extension

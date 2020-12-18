//
//  CreateAccountRequest.swift
//  MVVMBankApp
//
//  Created by Edgar Adrián on 17/12/20.
//

import Foundation

struct CreateAccountRequest: Codable {
    
    let name: String
    let accountType: String
    let balance: Double
    
}//CreateAccountRequest

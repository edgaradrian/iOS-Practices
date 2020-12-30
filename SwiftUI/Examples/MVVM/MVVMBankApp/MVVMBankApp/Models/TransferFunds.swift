//
//  TransferFunds.swift
//  MVVMBankApp
//
//  Created by Edgar Adrián on 30/12/20.
//

import Foundation

struct TransferFundRequest: Codable {
    
    let accountFromId: String
    let accountToId: String
    let amount: Double
    
}//TransferFundRequest

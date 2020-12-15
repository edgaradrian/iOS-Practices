//
//  AccountSummaryViewModel.swift
//  MVVMBankApp
//
//  Created by Edgar Adrián on 14/12/20.
//

import Foundation

class AccountSummaryViewModel: ObservableObject {
    
    var accounts: [AccountViewModel] = [AccountViewModel]()
    
    func getAllAccounts() {
        
        AccountService.shared.getAllAccounts { (result) in
            switch result {
            case .success(let accounts):
                print("Success")
            case .failure(let error):
                print("Failure")
            }
        }
    }
    
}//AccountSummaryViewModel

class AccountViewModel {
    var account: Account
    
    init(account: Account) {
        self.account = account
    }
    
    var name: String {
        account.name
    }
    
    var accountId: String {
        account.id.uuidString
    }
    
    var accountType: String {
        account.accountType.title
    }
    
    var balance: Double {
        account.balance
    }
    
}//AccountViewModel

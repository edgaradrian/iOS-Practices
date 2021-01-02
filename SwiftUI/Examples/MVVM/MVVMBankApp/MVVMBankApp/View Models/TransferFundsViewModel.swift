//
//  TransferFundsViewModel.swift
//  MVVMBankApp
//
//  Created by Edgar Adrián on 30/12/20.
//

import Foundation

class TransferFundsViewModel: ObservableObject {
    
    @Published var accounts = [AccountViewModel]()
    
    var filteredAccounts: [AccountViewModel] {
        if self.fromAccount === nil {
            return accounts
        } else {
            
            return accounts.filter {
                
                guard let fromAccount = self.fromAccount else {
                    return false
                }
                
                return $0.accountId != fromAccount.accountId
                
            }
        }
    }
    
    var fromAccount: AccountViewModel?
    var toAccount: AccountViewModel?
    
    var fromAccountType: String {
        fromAccount != nil ? fromAccount!.accountType : ""
    }
    
    var toAccountType: String {
        toAccount != nil ? toAccount!.accountType : ""
    }
    
    func populateAccounts() {
        AccountService.shared.getAllAccounts { (result) in
            switch result {
            case .success(let accounts):
                if let accounts = accounts {
                    DispatchQueue.main.async {
                        self.accounts = accounts.map(AccountViewModel.init)
                    }
                }
            case .failure(let error):
                print(error.localizedDescription)
                
            }
        }
    }
    
}

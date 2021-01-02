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
    var amount: String = ""
    
    var isAmountValid: Bool {
        guard let amount = Double(amount) else {
            return false
        }
        
        return amount >= 0 ? true : false
    }
    
    var fromAccountType: String {
        fromAccount != nil ? fromAccount!.accountType : ""
    }
    
    var toAccountType: String {
        toAccount != nil ? toAccount!.accountType : ""
    }
    
    private func isValid() -> Bool {
        return isAmountValid
    }//isValid
    
    func submitTransfer() {
        
        if !isValid() {
            return
        }
            
        guard let fromAccount = fromAccount,
              let toAccount = toAccount,
              let amount = Double(amount) else {
            return
        }
        
        let transferFundRequest = TransferFundRequest(accountFromId: fromAccount.accountId, accountToId: toAccount.accountId, amount: amount)
        
        AccountService.shared.transferFunds(transferFundRequest: transferFundRequest) { (result) in
            <#code#>
        }
        
    }//submitTransfer
    
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

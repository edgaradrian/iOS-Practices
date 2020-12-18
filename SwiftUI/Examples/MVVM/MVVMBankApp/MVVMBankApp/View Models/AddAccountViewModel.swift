//
//  AddAccountViewModel.swift
//  MVVMBankApp
//
//  Created by Edgar Adrián on 17/12/20.
//

import Foundation

class AddAccountViewModel: ObservableObject {
    
    var name: String = ""
    var accountType: AccountType = .checking
    var balance: String = ""
    @Published var errorMessage = ""
    
}//AddAccountViewModel

extension AddAccountViewModel {
    
    private var isValidName: Bool {
        name.isEmpty
    }
    
    private var isBalanceValid: Bool {
        
        guard let balance = Double(balance) else {
            return false
        }
        
        return balance >= 0 ? true : false
        
    }//isBalanceValid
    
    private func isValid() -> Bool {
        var errors = [String]()
        
        if isValidName {
            errors.append("no valid name")
        }
        
        if !isBalanceValid {
            errors.append("Balance is not valid")
        }
        
        if !errors.isEmpty {
            self.errorMessage = errors.joined(separator: "\n")
            return false
        }
        
        return true
        
    }//isValid
    
    
}//AddAccountViewModel

extension AddAccountViewModel {
    
    func createAccount(completion: @escaping (Bool) -> Void) {
        
        if !isValid() { return completion(false) }
        
        let request = CreateAccountRequest(name: name, accountType: accountType.rawValue, balance: Double(balance)!)
        AccountService.shared.createAccount(createAccountRequest: request) { (result) in
            <#code#>
        }
        
        
    }//creayeAccount
    
}//AddAccountViewModel extension

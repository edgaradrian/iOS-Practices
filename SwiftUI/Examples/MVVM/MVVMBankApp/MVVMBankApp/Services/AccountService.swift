//
//  AccountService.swift
//  MVVMBankApp
//
//  Created by Edgar Adrián on 14/12/20.
//

import Foundation

enum NetworkError: Error {
    case badUrl
    case decodingError
    case noData
}//NetworkError

class AccountService {
    
    private init () { }
    
    static let shared = AccountService()

    func getAllAccounts(completition: @escaping (Result<[Account]?, NetworkError>) -> Void) {
        
        guard let url = URL.urlForAccounts() else {
            return completition(.failure(.badUrl))
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let data = data, error == nil else {
                return completition(.failure(.noData))
            }
            
            let accounts = try? JSONDecoder().decode([Account].self, from: data)
            if accounts == nil {
                completition(.failure(.decodingError))
            } else {
                completition(.success(accounts))
            }
            
        }.resume()
        
    }//getAllAccount
    
}//AccountService

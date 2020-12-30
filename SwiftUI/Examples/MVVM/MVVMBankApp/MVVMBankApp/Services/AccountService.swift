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
    
    func createAccount(createAccountRequest: CreateAccountRequest, completion: @escaping (Result<CreateAccountResponse, NetworkError>) -> Void) {
        
        guard let url = URL.urlForCreateAccounts() else {
            return completion(.failure(.badUrl))
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try? JSONEncoder().encode(createAccountRequest)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            guard let data = data, error == nil else {
                return completion(.failure(.noData))
            }
            
            let accountCreateResponse = try? JSONDecoder().decode(CreateAccountResponse.self, from: data)
            
            if let response = accountCreateResponse {
                completion(.success(response))
            } else {
                completion(.failure(.decodingError))
            }
            
        }
       
    }//createAccount

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
    
    func transferFunds(transferFundRequest: TransferFundRequest, completion: @escaping (Result<TransferFundResponse, NetworkError>) -> Void) {
        
        guard let url = URL.urlForTransferFunds() else {
            return completion(.failure(.badUrl))
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try? JSONEncoder().encode(transferFundRequest)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            guard let data = data, error == nil else {
                return completion(.failure(.noData))
            }
            
            if let transferFundResponse = try? JSONDecoder().decode(TransferFundResponse.self, from: data) {
                if transferFundResponse.success {
                    completion(.success(transferFundResponse))
                } else {
                    completion(.failure(.decodingError))
                }
            }
            
        }.resume()
        
    }//transferFunds
    
}//AccountService

//
//  String+Extensions.swift
//  ListMoviesApp
//
//  Created by Edgar Adrián on 07/12/20.
//

import Foundation

extension String {
    
    func trimmedAndEscaped() -> String {
        
        let trimmedString = self.trimmingCharacters(in: .whitespacesAndNewlines)
        return trimmedString.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
        
    }
    
}//String

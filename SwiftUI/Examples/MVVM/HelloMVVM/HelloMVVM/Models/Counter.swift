//
//  Counter.swift
//  HelloMVVM
//
//  Created by Edgar Adrián on 02/12/20.
//

import Foundation

struct Counter {
    
    var value = 0
    var isPremium = false
    
    mutating func increment() {
        value += 1
        
        if value.isMultiple(of: 3) {
            isPremium = true
        } else {
            isPremium = false
        }
        
    }//increment 
    
}//Counter

//
//  RandomInt.swift
//  SwiftUIExampleObservedNumberInt
//
//  Created by Edgar Adrián on 27/05/20.
//  Copyright © 2020 Edgar Adrián. All rights reserved.
//

import Foundation
import Combine

class RandomInt: ObservableObject {
    
    @Published var number: Int = 0
    
    init(){
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (_) in
            self.number = Int.random(in: 1 ... 10)
        }
    }
    
}//RandomInt

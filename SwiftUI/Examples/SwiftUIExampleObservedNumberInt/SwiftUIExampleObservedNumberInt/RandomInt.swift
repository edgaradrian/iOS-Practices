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
    var timer = Timer()
    
    init(){
        self.startTimer()
    }//init
    
    func startTimer() {
        self.timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (_) in
            self.number = Int.random(in: 1 ... 10)
        }
    }//startTimer

    func stopTimer() {
        self.timer.invalidate()
    }//stopTimer
    
}//RandomInt

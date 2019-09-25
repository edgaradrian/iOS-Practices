//
//  TimeCounter.swift
//  RGBGame
//
//  Created by Edgar Adrián on 25/09/19.
//  Copyright © 2019 Edgar Adrián. All rights reserved.
//

import Foundation
import Combine

class TimeCounter: ObservableObject {
    let objectWillChange = PassthroughSubject<TimeCounter, Never>()
    var timer: Timer?
    var counter = 0
    
    @objc func updateCounter() {
        counter += 1
        objectWillChange.send(self)
    }//updateCounter
    
    init() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }//init
    
    func killTimer() {
        timer?.invalidate()
        timer = nil
    }//killTimer
    
}//TimeCounter class

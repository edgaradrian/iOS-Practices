//
//  CounterViewModel.swift
//  HelloMVVM
//
//  Created by Edgar Adrián on 03/12/20.
//

import Foundation
import SwiftUI

class CounterViewModel: ObservableObject {
    
    @Published private var counter = Counter()
    
    var value: Int {
        counter.value
    }//value
    
    func increment() {
        counter.increment()
    }//increment
    
}//CounterViewModel

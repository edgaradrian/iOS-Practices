//
//  Delay.swift
//  MyFirstSwiftUIAnimation
//
//  Created by Edgar Adrián on 13/05/22.
//

import Foundation

func delay(seconds: TimeInterval, code: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: code)
}//delay

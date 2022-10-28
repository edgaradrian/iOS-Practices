//
//  ScrollOffsetKey.swift
//  SwiftUIPersonalFinance
//
//  Created by Edgar Adrián on 28/10/22.
//

import SwiftUI

struct ScrollOffsetKey: PreferenceKey {
    
    typealias Value = CGFloat
    
    static var defaultValue: CGFloat = CGFloat.zero
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value += nextValue()
    }
    
}//ScrollOffsetKey


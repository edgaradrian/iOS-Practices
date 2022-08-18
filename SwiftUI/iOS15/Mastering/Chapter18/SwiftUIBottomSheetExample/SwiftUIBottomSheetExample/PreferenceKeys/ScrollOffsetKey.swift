//
//  ScrollOffsetKey.swift
//  SwiftUIBottomSheetExample
//
//  Created by Edgar Adrián on 12/08/22.
//

import Foundation
import SwiftUI

struct ScrollOffsetKey: PreferenceKey {
    
    typealias Value = CGFloat
    
    static var defaultValue: CGFloat = CGFloat.zero
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value += nextValue()
    }
    
}//ScrollOffsetKey

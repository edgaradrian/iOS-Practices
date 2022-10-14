//
//  View+Extensions.swift
//  SwiftUIPersonalFinance
//
//  Created by Edgar Adrián on 14/10/22.
//

import SwiftUI

extension View {
    
    func keyboardAdaptive() -> some View {
        
        if #available(iOS 14.0, *) {
            return AnyView(self)
        } else {
            return AnyView(ModifiedContent(content: self, modifier: KeyboardAdaptive()))
        }
        
    }//keyboardAdaptive
    
}//extension View

//
//  View+Extensions.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 21/07/22.
//

import SwiftUI

extension View {
    
    func makeTextBanner() -> some View {
        self
            .frame(maxWidth: .infinity)
            .font(.title)
            .padding().background(
                Color.cyan
            )
            .foregroundColor(.cyan)
    }
    
}//View

//
//  TextBanner.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 21/07/22.
//

import SwiftUI

struct TextBanner: ViewModifier {
    
    func body(content: Content) -> some View {
        content.frame(maxWidth: .infinity)
            .font(.title)
            .padding()
            .background(
                Color.blue
            )
            .foregroundColor(.white)
    }//body
    
}//TextBanner

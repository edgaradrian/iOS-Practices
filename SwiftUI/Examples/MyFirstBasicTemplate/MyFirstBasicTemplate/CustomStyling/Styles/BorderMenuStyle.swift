//
//  BorderMenuStyle.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 20/07/22.
//

import SwiftUI

struct BorderMenuStyle: MenuStyle {
    
    var borderColor = Color.clear
    
    func makeBody(configuration: Configuration) -> some View {
        
        Menu(configuration)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(borderColor, lineWidth: 3)
            )
        
    }//makeBody
    
    
}//BorderMenuStyle

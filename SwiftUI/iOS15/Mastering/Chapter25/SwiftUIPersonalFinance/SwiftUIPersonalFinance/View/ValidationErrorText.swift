//
//  ValidationErrorText.swift
//  SwiftUIPersonalFinance
//
//  Created by Edgar Adrián on 17/10/22.
//

import SwiftUI

struct ValidationErrorText: View {
    
    var iconName = "info.circle"
    var iconColor = Color(red: 251/255, green: 128/255, blue: 128/255)

    var text = ""
    
    var body: some View {
        HStack {
            Image(systemName: iconName)
                .foregroundColor(iconColor)
            Text(text)
                .font(.system(.body, design: .rounded))
                .foregroundColor(.secondary)
            
            Spacer()
        }
    }
    
}//ValidationErrorText

struct ValidationErrorText_Previews: PreviewProvider {
    static var previews: some View {
        ValidationErrorText()
    }
}//ValidationErrorText_Previews

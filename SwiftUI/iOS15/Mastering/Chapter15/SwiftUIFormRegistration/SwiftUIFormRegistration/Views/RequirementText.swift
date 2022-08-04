//
//  RequirementText.swift
//  SwiftUIFormRegistration
//
//  Created by Edgar Adrián on 04/08/22.
//

import SwiftUI

struct RequirementText: View {
    
    var iconName = "xmark.square"
    var iconColor = Color.orange
    
    var text = ""
    var isStrikeThrough = false
    
    var body: some View {
        HStack {
            Image(systemName: iconName)
                .foregroundColor(iconColor)
            Text(text)
                .font(.system(.body, design: .rounded))
                .foregroundColor(.secondary)
                .strikethrough(isStrikeThrough)
            Spacer()
        }
    }//body
}//RequirementText

struct RequirementText_Previews: PreviewProvider {
    static var previews: some View {
        RequirementText()
    }
}

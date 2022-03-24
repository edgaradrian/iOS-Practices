//
//  Text_Formatting.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 24/03/22.
//

import SwiftUI

struct Text_Formatting: View {
    @State private var modifierActive = true
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Bold").bold()
            Text("Italic").italic()
            Text("Strikethrough").strikethrough()
            Text("Green Strikethrough").strikethrough(modifierActive, color: .cyan)
            Text("ForegroundColor")
                .foregroundColor(.cyan)
            Text("Underline")
                .underline()
            Text("Green Underline")
                .underline(modifierActive, color: .cyan)
            Toggle("Modificadores activos", isOn: $modifierActive)
        }
    }
}

struct Text_Formatting_Previews: PreviewProvider {
    static var previews: some View {
        Text_Formatting()
    }
}

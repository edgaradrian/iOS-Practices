//
//  Toggle_Tint.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 11/04/22.
//

import SwiftUI

struct Toggle_Tint: View {
    @State private var isToggleOn = true
    
    var body: some View {
        VStack(spacing: 40) {
            
            HeaderView(titulo: "Toggle", subtitulo: "Tint", description: "A partir de iOS 15, se puede utilizar el modificador tint para cambiar el color.")
            
            Group {
                Toggle(isOn: $isToggleOn) {
                    Text("Cyan")
                    Image(systemName: "paintpalette")
                }
                .tint(.cyan)
                
                Toggle(isOn: $isToggleOn) {
                    Text("Pink")
                    Image(systemName: "paintpalette")
                }
                .tint(.pink)
                
            }
            .padding(.horizontal)
            
            
        }
        .font(.title)
    }
}

struct Toggle_Tint_Previews: PreviewProvider {
    static var previews: some View {
        Toggle_Tint()
    }
}

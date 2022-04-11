//
//  Toggle_Color.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 11/04/22.
//

import SwiftUI

struct Toggle_Color: View {
    @State private var isToggleOn = true
    
    var body: some View {
        VStack(spacing: 40) {
            HeaderView(titulo: "Toggle", subtitulo: "Color", description: "Se puede cambiar el color del toggle a través del modificador SwitchToggleStyle.")
            
            Group {
                
                Toggle(isOn: $isToggleOn) {
                    Text("Cyan")
                    Image(systemName: "paintpalette")
                }
                .toggleStyle(SwitchToggleStyle(tint: Color.cyan))
                
                Toggle(isOn: $isToggleOn) {
                    Text("Pink")
                    Image(systemName: "paintpalette")
                }
                .toggleStyle(SwitchToggleStyle(tint: Color.pink))
                
                
            }
            .padding(.horizontal)
            
            
        }
        .font(.title)
    }
}

struct Toggle_Color_Previews: PreviewProvider {
    static var previews: some View {
        Toggle_Color()
    }
}

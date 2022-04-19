//
//  Color_OtherSystemColors.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 19/04/22.
//

import SwiftUI

struct Color_OtherSystemColors: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Color", subtitulo: "Otros Colores del Sistema", description: "Estos colores se muestran diferente dependiendo del modo normal u obscuro.")
            
            Text("Light Mode")
                .font(.title)
            
            Text("Primary Color")
                .foregroundColor(.primary)
            
            Text("Secondary Color")
                .foregroundColor(.secondary)
            
            Text("Accent Color")
                .foregroundColor(.accentColor)
            
            
            Group {
                
                Text("Dark Mode")
                    .font(.title)
                
                Text("Primary Color")
                    .foregroundColor(.primary)
                
                Text("Secondary Color")
                    .foregroundColor(.secondary)
                
                Text("Accent Color")
                    .foregroundColor(.accentColor)
                
            }
            
            
        }
        .font(.title)
    }
}

struct Color_OtherSystemColors_Previews: PreviewProvider {
    static var previews: some View {
        Color_OtherSystemColors()
    }
}

//
//  Color_Light_Dark_Modes.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 19/04/22.
//

import SwiftUI

struct Color_Light_Dark_Modes: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Color", subtitulo: "In Light and Dark Modes", description: "El sistema de colores cambiará en el modo normal y obscuro para proporcionar un mejor contraste.")
            
            List {
                
                Color.pink
                Color.red
                Color.yellow
                Color.blue
                Color.orange
                Color.gray
                Color.purple
                Color.green
                
            }
            
        }
        .font(.title)

    }
}

struct Color_Light_Dark_Modes_Previews: PreviewProvider {
    static var previews: some View {
        Color_Light_Dark_Modes()
    }
}

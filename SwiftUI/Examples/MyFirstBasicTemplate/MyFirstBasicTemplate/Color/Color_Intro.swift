//
//  Color_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 18/04/22.
//

import SwiftUI

struct Color_Intro: View {
    var body: some View {
        VStack(spacing: 40) {
            HeaderView(titulo: "Color", subtitulo: "Los Colores son vistas", description: "Se pueden tratar los colores como vistas con sus propios modificadores.")
        
            HStack(spacing: 40) {
                Color.blue
                    .frame(width: 60, height: 60)
                
                Color.yellow
                    .frame(width: 60, height: 60)
                
                Color.red
                    .frame(width: 60, height: 60)
                    .cornerRadius(20)
                
            }
            
            Spacer()
            
        }
        .font(.title)
    }
}

struct Color_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Color_Intro()
    }
}

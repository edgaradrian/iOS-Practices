//
//  ButtonStyle_Default.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 16/07/22.
//

import SwiftUI

struct ButtonStyle_Default: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Estilo de Botón", subtitulo: "Predeterminados", description: "Existen unso estilos para botones ya creados")
            
            Group {
                Text("DefaultButtonStyle")
                    .font(.title)
                Button("DefaultButtonStyle", action: {})
                    .buttonStyle(DefaultButtonStyle())
                
                Text("PlainButtonStyle")
                    .font(.title)
                Button("PlainButtonStyle", action: {})
                    .buttonStyle(PlainButtonStyle())
                
                Text("BorderlessButtonStyle")
                    .font(.title)
                Button("BorderlessButtonStyle", action: {})
                    .buttonStyle(BorderlessButtonStyle())
                
            }
            
        }
    }
}

struct ButtonStyle_Default_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyle_Default()
    }
}

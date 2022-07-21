//
//  MenuStyle_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 20/07/22.
//

import SwiftUI

struct MenuStyle_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Estilo de Menú", subtitulo: "Introducción", description: "Usando el modifricador de menuStyle para aplicar a las vista Menú")
            
            Menu("Editar") {
                Button(action: {}) {
                    Text("Agregar Color")
                    Image(systemName: "eyedropper.full")
                }
                
                Button(action: {}) {
                    Text("Cambiar contraste")
                    Image(systemName: "circle.lefthalf.fill")
                }
            }
            .menuStyle(BorderMenuStyle(borderColor: .blue))
            
        }
        .tint(.blue)
        .font(.title)
        
        
    }
}

struct MenuStyle_Intro_Previews: PreviewProvider {
    static var previews: some View {
        MenuStyle_Intro()
    }
}

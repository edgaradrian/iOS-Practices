//
//  Menu_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 02/03/22.
//

import SwiftUI

struct Menu_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Menu", subtitulo: "Introducción", description: "Usa la vista menú para agrupar acciones similares para presentar al usuario un botón para pulsar")
            
            Spacer()
            
            Menu("Edit") {
                Button(action: {}) {
                    Text("Agregar color")
                    Image(systemName: "eyedropper.full")
                    
                }
                Button(action: {}) {
                    Image(systemName: "circle.lefthalf.fill")
                        .foregroundColor(.cyan)
                    Text("Cambiar contraste")
                }
            }
            
            Spacer()
            
        }
        .font(.title)
    }
}

struct Menu_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Menu_Intro()
    }
}

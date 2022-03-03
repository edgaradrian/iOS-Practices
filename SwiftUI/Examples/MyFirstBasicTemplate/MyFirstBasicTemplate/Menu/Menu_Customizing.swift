//
//  Menu_Customizing.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 03/03/22.
//

import SwiftUI

struct Menu_Customizing: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Menu", subtitulo: "Personalizando", description: "El parámetro de etiqueta puede ser cualquier composición de vistas")
            
            Spacer()
            
            Menu {
                
                Button(action: {}) {
                    Text("Agregar color")
                    Image(systemName: "eyedropper.full")
                }
                
                Button(action: {}) {
                    Image(systemName: "circle.lefthalf.fill")
                    Text("Cambiar el contraste")
                }
                
                Button(action: {}) {
                    Text("Distorsión")
                    Image(systemName: "skew")
                }
                
            } label: {
                VStack(spacing: 16) {
                    Image(systemName: "paintbrush.pointed.fill")
                    Text("Opciones de editar")
                }
                .foregroundColor(.white)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 20)
                )
            }
            
            Spacer()
        }
        .font(.title)
    }
}

struct Menu_Customizing_Previews: PreviewProvider {
    static var previews: some View {
        Menu_Customizing()
    }
}

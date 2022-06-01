//
//  ContextMenu_Introduction.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 31/05/22.
//

import SwiftUI

struct ContextMenu_Introduction: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Menú de Contexto", subtitulo: "Introducción", description: "El menú de contexto está atado a las vistas. No se necesitan gestos para hacerlos trabajar.")
            
            HStack {
                Text("Obtener ayuda")
                Spacer()
                Image(systemName: "questionmark.diamond.fill")
                    .font(.title)
                    .foregroundColor(.cyan)
                    .frame(width: 44, height: 44)
                    .contextMenu {
                        Button(action: {}) {
                            Text("Agregar color")
                            Image(systemName: "eyedropper.full")
                        }
                        Button(action: {}) {
                            Image(systemName: "circle.lefthalf.fill")
                            Text("Cambiar contraste")
                        }
                    }
            }
            .padding()
            
        }
    }
}

struct ContextMenu_Introduction_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenu_Introduction()
    }
}

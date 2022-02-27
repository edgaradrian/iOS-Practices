//
//  List_WithStaticViews.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 26/02/22.
//

import SwiftUI

struct List_WithStaticViews: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "List", subtitulo: "Static Data", description: "Se pueden mostrar vistas o información estática a un lista (List). Esto nos da una vista que se pueda desplazar.")
            
            List {
                Text("Línea Uno")
                Text("Línea Dos")
                Text("Línea Tres")
                Image("packers")
                Button("Presiona Aquí", action: {})
                    .foregroundColor(.cyan)
                HStack {
                    Spacer()
                    Text("Texto centrado")
                    Spacer()
                }
                .padding()
            }
            .font(.title)
            
        }
    }
}

struct List_WithStaticViews_Previews: PreviewProvider {
    static var previews: some View {
        List_WithStaticViews()
    }
}

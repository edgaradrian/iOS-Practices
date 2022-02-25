//
//  DisclosureGroup_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 25/02/22.
//

import SwiftUI

struct DisclosureGroup_Intro: View {
    @State private var disclosurExpanded = true
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "DisclosureGroup", subtitulo: "Introducción", description: "Usa el DisclosureGroup cuando se quiera expandir o colapsar otras vistas.")
            
            VStack(spacing: 20) {
                DisclosureGroup("Más Información") {
                    Text("Pulsa la fila para expandir/colapsar el contenido del DisclosureGroup. DisclosureGroups están colapsados por defecto.")
                }
                
                DisclosureGroup {
                    Image(systemName: "info.circle.fill")
                        .foregroundColor(.cyan)
                    Text("Tú puedes usar otro inicializador para personalizar tu etiqueta también")
                } label: {
                    Text("Más Información")
                        .bold()
                }
                
            }
            .padding()
            
            Spacer()
            
        }
        .font(.title)
    }
}

struct DisclosureGroup_Intro_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureGroup_Intro()
    }
}

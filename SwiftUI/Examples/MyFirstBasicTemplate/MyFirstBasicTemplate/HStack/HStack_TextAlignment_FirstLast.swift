//
//  HStack_TextAlignment_FirstLast.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 13/02/22.
//

import SwiftUI

struct HStack_TextAlignment_FirstLast: View {
    var body: some View {
        
        VStack(spacing: 20) {
            HeaderView(titulo: "HStack", subtitulo: "First & Last Text Alignment", description: "La firstTextBaseline asignará el fondo del texto en la primera línea (\"Excelente\" y \"Muy\").")
                .layoutPriority(1)
            
            HStack(alignment: .firstTextBaseline) {
                Text("Excelente Desarrollador")
                    .font(.title3)
                Text("Muy excelente desarrollador")
            }
            .frame(width: 300)
            
            DescView(description: "El lastTextBase asignará el fonde del texto en la última línea (\"Desarrollador\" y \"Desarrollador\").", backColor: .orange)
            
            HStack(alignment: .lastTextBaseline) {
                Text("Excelente Desarrollador")
                    .font(.title3)
                Text("Muy excelente desarrollador")
            }
            .frame(width: 300)
            
        }
        .font(.title)
        
    }
}

struct HStack_TextAlignment_FirstLast_Previews: PreviewProvider {
    static var previews: some View {
        HStack_TextAlignment_FirstLast()
    }
}

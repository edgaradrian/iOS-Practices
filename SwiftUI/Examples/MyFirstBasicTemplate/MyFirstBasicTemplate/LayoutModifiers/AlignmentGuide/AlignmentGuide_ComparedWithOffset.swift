//
//  AlignmentGuide_ComparedWithOffset.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 06/06/22.
//

import SwiftUI

struct AlignmentGuide_ComparedWithOffset: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 25) {
                HeaderView(titulo: "AlignmentGuide", subtitulo: "Comparado con Offset", description: "Usar el modificador alignmentGuide para posicionar vistas en relación a una guía. La guía puede ser vertical u horizontal.")
                    .layoutPriority(1)
                
                Text("Usando la guía de alineado")
                HStack {
                    Image(systemName: "1.circle")
                        .alignmentGuide(VerticalAlignment.center) { _ in
                            20
                        }
                    Image(systemName: "2.circle")
                        .alignmentGuide(VerticalAlignment.center) { _ in
                            0
                        }
                    Image(systemName: "3.circle")
                        .alignmentGuide(VerticalAlignment.center) { _ in
                            -20
                        }
                }
                .border(Color.blue, width: 2)
                
                Text("Usando offset")
                HStack {
                    Image(systemName: "1.circle")
                        .offset(y: -20)
                    Image(systemName: "2.circle")
                    Image(systemName: "3.circle")
                        .offset(y: 20)
                }
                .border(Color.blue, width: 2)

                DescView(description: "Usando la guía de alineado moverá el cuadro de la vista. Con el offset se mueve el contenido no el marco.", backColor: .blue)
                
            }
            .font(.title)
        }
    }
}

struct AlignmentGuide_ComparedWithOffset_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentGuide_ComparedWithOffset()
    }
}

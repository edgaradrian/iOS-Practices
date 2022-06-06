//
//  AlignmentGuide_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 06/06/22.
//

import SwiftUI

struct AlignmentGuide_Intro: View {
    var body: some View {
        VStack(spacing: 40) {
            HeaderView(titulo: "AlignmentGuide", subtitulo: "Introducción", description: "Usar el modificador alignmentGuide para posicionar vistas en relación a una guía. Las guías pueden ser verticales u horizontales.")
            
            Text("Usando guías verticales con HStack")
            ZStack {
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
                Divider()
                    .background(Color.blue)
            }
            
            Text("Usando Guías horizontales con VStacks")
            ZStack {
                VStack(spacing: 10) {
                    Image(systemName: "1.circle")
                        .alignmentGuide(HorizontalAlignment.center) { _ in
                            20
                        }
                    Image(systemName: "2.circle")
                        .alignmentGuide(HorizontalAlignment.center) { _ in
                            0
                        }
                    Image(systemName: "3.circle")
                        .alignmentGuide(HorizontalAlignment.center) { _ in
                            -20
                        }
                }
                Divider()
                    .background(Color.blue)
            }
            
        }
        .font(.title)
    }
}

struct AlignmentGuide_Intro_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentGuide_Intro()
    }
}

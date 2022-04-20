//
//  Color_SecondaryStacking.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 20/04/22.
//

import SwiftUI

struct Color_SecondaryStacking: View {
    var body: some View {
        VStack(spacing: 40) {
            
            HeaderView(titulo: "Color", subtitulo: "Poniendo en capas el color secundario", description: "Cuando se apila un color seundario encima de otro, comienza a aclararse u obscureserse, dependiendo si está en modo normal o en modo obscuro.")
            
            ZStack {
                Color.secondary
                Color.secondary.padding(28)
                Color.secondary.padding(60)
                Color.secondary.padding(80)
                Color.secondary.padding(100)
            }
            .frame(height: 300)
            
        }
        .font(.title)
    }
}

struct Color_SecondaryStacking_Previews: PreviewProvider {
    static var previews: some View {
        Color_SecondaryStacking()
    }
}

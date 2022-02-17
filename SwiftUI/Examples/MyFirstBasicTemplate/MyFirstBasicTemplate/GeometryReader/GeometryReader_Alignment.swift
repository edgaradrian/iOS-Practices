//
//  GeometryReader_Alignment.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 17/02/22.
//

import SwiftUI

struct GeometryReader_Alignment: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Geometry Reader", subtitulo: "Alignment", description: "Las vistas hijas dentro de GeometryReader se alinean en la esquina superior izquierda por omisión")
            
            GeometryReader { _ in
                Image(systemName: "arrow.up.left")
                    .padding()
            }
            .background(Color.yellow)
        }
        .font(.title)
    }
}

struct GeometryReader_Alignment_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader_Alignment()
    }
}

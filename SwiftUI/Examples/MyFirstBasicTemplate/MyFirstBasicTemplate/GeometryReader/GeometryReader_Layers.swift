//
//  GeometryReader_Layers.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 18/02/22.
//

import SwiftUI

struct GeometryReader_Layers: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "GeometryReader", subtitulo: "Layers", description: "Las vistas hijas dentro de un GeometryReader se apilarán una sobre otra")
            
            GeometryReader { _ in
                Image(systemName: "18.circle")
                    .padding()
                Image(systemName: "20.square")
                    .padding()
                Image(systemName: "50.circle")
                    .padding()
            }
            .font(.largeTitle)
            .foregroundColor(.white)
            .background(Color.yellow)
            
        }
        .font(.title)
    }
}

struct GeometryReader_Layers_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader_Layers()
    }
}

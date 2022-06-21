//
//  Edges_Landscape_After.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 20/06/22.
//

import SwiftUI

struct Edges_Landscape_After: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Ignorando el Área Segura", subtitulo: "Panorama", description: "Se pueden ignorar varios límites al mismo tiempo usando un arreglo")
        }
        .font(.title)
        .ignoresSafeArea(edges: [.horizontal, .bottom])
    }
}

struct Edges_Landscape_After_Previews: PreviewProvider {
    static var previews: some View {
        Edges_Landscape_After()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}

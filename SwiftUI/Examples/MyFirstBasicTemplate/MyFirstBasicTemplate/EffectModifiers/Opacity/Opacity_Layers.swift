//
//  Opacity_Layers.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 07/07/22.
//

import SwiftUI

struct Opacity_Layers: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                
                HeaderView(titulo: "Opacidad", subtitulo: "En capas", description: "Se usa la opacidade sólo para afectar las capas que se deseen.")
                
                Text("Opacidad sólo en la capa contenedora")
                    .padding(.top)
                Image("Lambeau_Field")
                    .resizable()
                    .frame(width: 150, height: 120)
                    .opacity(0.3)
                    .background(
                        Color.green
                    )
                
                Text("Opacidad en todas las capas")
                Image("Lambeau_Field")
                    .resizable()
                    .frame(width: 150, height: 120)
                    .background(Color.green)
                    .opacity(0.3)
                
                Text("Opacidad en la capa superior")
                Image("Lambeau_Field")
                    .resizable()
                    .frame(width: 150, height: 120)
                    .overlay(Color.green.opacity(0.3))
                
                
            }
            .font(.title)
        }
    }
}

struct Opacity_Layers_Previews: PreviewProvider {
    static var previews: some View {
        Opacity_Layers()
    }
}

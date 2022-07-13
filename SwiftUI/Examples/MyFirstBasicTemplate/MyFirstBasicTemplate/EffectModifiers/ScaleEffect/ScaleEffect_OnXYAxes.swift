//
//  ScaleEffect_OnXYAxes.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 13/07/22.
//

import SwiftUI

struct ScaleEffect_OnXYAxes: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                HeaderView(titulo: "Efecto de Escala", subtitulo: "En ejes X y Y", description: "Se puede escalar en una sola dirección. O escalar en ambas direcciones.")
                
                Text("Estiramiento Horizontal")
                    .font(.title)
                    .scaleEffect(x: 1.4, y: 1)
                
                Text("Estiramiento Vertical en eje Y")
                    .font(.title)
                    .scaleEffect(x: 1, y: 3)
                
                Divider()
                    .padding(.top)
                Text("Encoger Horizontalmente")
                Image(systemName: "cloud.sun.fill")
                    .scaleEffect(x: 0.7, y: 1, anchor: .center)
                
                Text("Encoger Verticalmente")
                Image(systemName: "cloud.sun.fill")
                    .scaleEffect(x: 5, y: 0.8, anchor: .center)
                
                Text("Encoger Horizontalmente, Estiramiento Vertical")
                Image(systemName: "cloud.sun.fill")
                    .scaleEffect(x: 0.6, y: 5, anchor: .center)
            }
        }
    }
}

struct ScaleEffect_OnXYAxes_Previews: PreviewProvider {
    static var previews: some View {
        ScaleEffect_OnXYAxes()
    }
}

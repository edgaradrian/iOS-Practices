//
//  ScaleEffect_Anchor.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 14/07/22.
//

import SwiftUI

struct ScaleEffect_Anchor: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HeaderView(titulo: "Efecto de Escala", subtitulo: "Anclas", description: "La escala ocurre desde el punto central. Pero puede escalar de diferentes puntos utilizando el parámetro de ancla.")
                
                VStack(spacing: 60) {
                    Text("Arriba al principio")
                        .scaleEffect(2.0, anchor: .topLeading)
                        .border(Color.red)
                    
                    Text("Arriba")
                        .scaleEffect(2.0, anchor: .top)
                        .border(Color.red)
                    
                    Text("Al final")
                        .scaleEffect(2.0, anchor: .trailing)
                        .border(Color.red)
                    
                    Text("Al principio")
                        .scaleEffect(2.0, anchor: .leading)
                        .border(Color.red)
                    
                    Text("Al fondo")
                        .scaleEffect(2.0, anchor: .bottom)
                        .border(Color.red)
                    
                    Text("Al fondo y al final")
                        .scaleEffect(2.0, anchor: .bottomTrailing)
                        .border(Color.red)
                    
                }
            }
        }
    }
}

struct ScaleEffect_Anchor_Previews: PreviewProvider {
    static var previews: some View {
        ScaleEffect_Anchor()
    }
}

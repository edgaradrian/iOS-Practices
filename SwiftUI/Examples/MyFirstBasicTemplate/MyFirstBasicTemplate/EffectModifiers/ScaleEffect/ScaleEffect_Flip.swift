//
//  ScaleEffect_Flip.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 14/07/22.
//

import SwiftUI

struct ScaleEffect_Flip: View {
    var body: some View {
        ScrollView {
            
            VStack(spacing: 5) {
                
                HeaderView(titulo: "Efecto de Escala", subtitulo: "Voltear vistas", description: "Se pueden voltear las vistas vertical y horizontalmente al usar números negativos.")
                
                Text("Dar la vuelta horizontalmente")
                    .font(.title)
                    .scaleEffect(x: -1, y: 1)
                
                Text("Dar la vuelta verticalmente")
                    .font(.title)
                    .scaleEffect(x: 1, y: -1)
                
                Text("Imagen original")
                Image("packers")
                    .resizable()
                    .frame(width: 140, height: 140)
                    .scaleEffect(x: 1, y: 1)
                
                Text("Dar la vuelta horizontalmente")
                Image("packers")
                    .resizable()
                    .frame(width: 140, height: 140)
                    .scaleEffect(x: -1, y: 1)
                
                Text("Dar la vuelta verticalmente")
                Image("packers")
                    .resizable()
                    .frame(width: 140, height: 140)
                    .scaleEffect(x: 1, y: -1)
                
                VStack {
                    Text("Dar la vuelta vertical y horizontalmente")
                    Image("packers")
                        .resizable()
                        .frame(width: 140, height: 140)
                        .scaleEffect(x: -1, y: -1)
                }
                
            }
            
        }
    }
}

struct ScaleEffect_Flip_Previews: PreviewProvider {
    static var previews: some View {
        ScaleEffect_Flip()
    }
}

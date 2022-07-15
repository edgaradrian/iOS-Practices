//
//  Shadow_OpacityAndShadows.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 15/07/22.
//

import SwiftUI

struct Shadow_OpacityAndShadows: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HeaderView(titulo: "Sombra", subtitulo: "Opacidad y sombras", description: "Las sombras se forman en las partes sólidas(opacas) de una vista. Algunas veces se tiene que agregar una forma u un color para poner la sombra alrededor.")
                
                Button(action: {}) {
                    Text("Sombra adentro y afuera")
                        .font(.title)
                }
                .padding()
                .background(
                    Capsule()
                        .stroke(Color.blue, lineWidth: 2)
                        .shadow(color: .black, radius: 5)
                )
                
                Text("Sombra sólo en el exterior")
                
                Button(action: {}) {
                    Text("Sombra solo afuera")
                        .font(.title)
                }
                .padding()
                .background(
                    Capsule()
                        .fill(Color.white)
                        .shadow(color: .black, radius: 5)
                )
                .overlay(
                    Capsule()
                        .stroke(.blue, lineWidth: 2)
                )
                
                Text("Sombra solo en el exterior (de otra modo)")
                
                Button(action: {}) {
                    Text("Sombra solo afuera")
                        .font(.title)
                }
                .padding()
                .background(
                    Color.white
                )
                .cornerRadius(.infinity)
                .shadow(color: .black, radius: 5)
                .overlay(
                    Capsule()
                        .stroke(.blue, lineWidth: 2)
                )
                
                
            }
            .font(.title)
        }
    }
}

struct Shadow_OpacityAndShadows_Previews: PreviewProvider {
    static var previews: some View {
        Shadow_OpacityAndShadows()
    }
}

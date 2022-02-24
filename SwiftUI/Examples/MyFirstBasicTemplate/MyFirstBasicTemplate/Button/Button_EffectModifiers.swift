//
//  Button_EffectModifiers.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 24/02/22.
//

import SwiftUI

struct Button_EffectModifiers: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Button", subtitulo: "With Backgrounds", description: "como las demás vistas, también podemos personalizar el fondo y agregar una sombra.")
            
            Button(action: {}) {
                Text("Solid Button")
                    .padding()
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            
            Button(action: {}) {
                Text("Button con sombra")
                    .padding(12)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            .shadow(color: .blue, radius: 20, y: 5)
            
            Button(action: {}) {
                Text("Button With Rounded Ends")
                    .padding(EdgeInsets(top: 12, leading: 20, bottom: 12, trailing: 20))
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(100)
            }
            
            
        }
        .font(.title)
    }
}

struct Button_EffectModifiers_Previews: PreviewProvider {
    static var previews: some View {
        Button_EffectModifiers()
    }
}

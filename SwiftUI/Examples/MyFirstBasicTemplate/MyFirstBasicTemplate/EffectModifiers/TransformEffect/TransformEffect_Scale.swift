//
//  TransformEffect_Scale.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 16/07/22.
//

import SwiftUI

struct TransformEffect_Scale: View {
    
    @State private var applyEffect = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Efecto de Transformación", subtitulo: "Escala", description: "Redimensionando una vista con el efecto de transformación de escala.")
            
            Spacer()
            
            Image(systemName: "flame")
                .border(Color.blue)
                .font(.system(size: 100))
                .foregroundColor(.blue)
                .transformEffect(
                    applyEffect ? CGAffineTransform(scaleX: 2, y: 2) : .identity
                )
                .border(Color.red)
            
            Spacer()
            
            HStack {
                
                Spacer()
                
                Button {
                    self.applyEffect = true
                } label: {
                    Text("Aplicar Efecto")
                }

                Spacer()
                
                Button {
                    self.applyEffect = false
                } label: {
                    Text("Ramover efecto")
                }

                Spacer()
                
            }
            
        }
    }
}

struct TransformEffect_Scale_Previews: PreviewProvider {
    static var previews: some View {
        TransformEffect_Scale()
    }
}

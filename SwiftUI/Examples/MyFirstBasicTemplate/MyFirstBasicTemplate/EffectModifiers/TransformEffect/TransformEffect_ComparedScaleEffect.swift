//
//  TransformEffect_ComparedScaleEffect.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 16/07/22.
//

import SwiftUI

struct TransformEffect_ComparedScaleEffect: View {
    
    @State private var applyEffect = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Efecto de Transformación", subtitulo: "Comparado con el efecto escala", description: "Usando el efecto de escala para redimensionar vistas.")
            
            Spacer()
            
            Image(systemName: "flame")
                .border(Color.blue)
                .font(.system(size: 100))
                .foregroundColor(.blue)
                .scaleEffect(
                    applyEffect ? CGSize(width: 2, height: 2) : CGSize(width: 1, height: 1)
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

struct TransformEffect_ComparedScaleEffect_Previews: PreviewProvider {
    static var previews: some View {
        TransformEffect_ComparedScaleEffect()
    }
}

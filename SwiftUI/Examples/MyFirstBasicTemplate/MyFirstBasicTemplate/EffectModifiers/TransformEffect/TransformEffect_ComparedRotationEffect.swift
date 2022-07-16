//
//  TransformEffect_ComparedRotationEffect.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 16/07/22.
//

import SwiftUI

struct TransformEffect_ComparedRotationEffect: View {
    
    @State private var applyEffect = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Efecto de Transformación", subtitulo: "Comparado con el efecto de rotación", description: "Usar el efecto de rotación toma siempre el punto de anclaje el centro de la vista.")
            
            Spacer()
            
            Image(systemName: "pencil.and.outline")
                .border(Color.blue)
                .font(.system(size: 100))
                .foregroundColor(.blue)
                .rotationEffect(
                    applyEffect ? Angle.degrees(180) : Angle.zero
                )
            
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

struct TransformEffect_ComparedRotationEffect_Previews: PreviewProvider {
    static var previews: some View {
        TransformEffect_ComparedRotationEffect()
    }
}

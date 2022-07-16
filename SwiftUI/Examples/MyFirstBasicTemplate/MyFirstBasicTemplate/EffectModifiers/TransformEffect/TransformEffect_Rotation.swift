//
//  TransformEffect_Rotation.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 16/07/22.
//

import SwiftUI

struct TransformEffect_Rotation: View {
    
    @State private var applyEffect = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Efecto de Transformación", subtitulo: "Rotación", description: "Usar el efecto de transformación para rotar una vista (tomando como ancla arriba al principio)")
            
            Spacer()

            Image(systemName: "arrow.turn.up.left")
                .font(.system(size: 40))
            
            Image(systemName: "pencil.and.outline")
                .border(Color.blue)
                .font(.system(size: 100))
                .foregroundColor(.blue)
                .transformEffect(
                    applyEffect ? CGAffineTransform(rotationAngle: CGFloat(Angle.degrees(180).radians)) : .identity
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

struct TransformEffect_Rotation_Previews: PreviewProvider {
    static var previews: some View {
        TransformEffect_Rotation()
    }
}

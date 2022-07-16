//
//  TransformEffect_Translation.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 16/07/22.
//

import SwiftUI

struct TransformEffect_Translation: View {
    
    @State private var applyEffect = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Efecto de transformación", subtitulo: "Traslado", description: "Usr el efecto de la transformación para aplicar traslado.")
            
            Spacer()
            
            Image(systemName: "arrow.up.right")
                .font(.largeTitle)
                .padding(.leading, 90)
            
            Image(systemName: "paperplane.fill")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .transformEffect(applyEffect ? CGAffineTransform(translationX: 140, y: -140) : .identity)
            
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

struct TransformEffect_Translation_Previews: PreviewProvider {
    static var previews: some View {
        TransformEffect_Translation()
    }
}

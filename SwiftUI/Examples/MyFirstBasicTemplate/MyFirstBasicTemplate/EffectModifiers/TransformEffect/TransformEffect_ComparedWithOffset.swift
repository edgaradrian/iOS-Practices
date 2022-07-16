//
//  TransformEffect_ComparedWithOffset.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 16/07/22.
//

import SwiftUI

struct TransformEffect_ComparedWithOffset: View {
    
    @State private var applyEffect = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Efecto de transformación", subtitulo: "Traslado", description: "Con el modificador de offset se tiene el mismo efecto.")
            
            Spacer()
            
            Image(systemName: "arrow.up.right")
                .font(.largeTitle)
                .padding(.leading, 90)
            
            Image(systemName: "paperplane.fill")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .offset(applyEffect ? CGSize(width: 140, height: -140) : CGSize.zero)
            
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

struct TransformEffect_ComparedWithOffset_Previews: PreviewProvider {
    static var previews: some View {
        TransformEffect_ComparedWithOffset()
    }
}

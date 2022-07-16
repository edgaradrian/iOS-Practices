//
//  Shadow_DepressedEffect.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 16/07/22.
//

import SwiftUI

struct Shadow_DepressedEffect: View {
    var body: some View {
        ZStack {
            
            Color.cyan
                .opacity(0.4)
                .ignoresSafeArea(.all)
            
            VStack(spacing: 20) {
                
                HeaderView(titulo: "Sombra", subtitulo: "Efecto Deprimido", description: "Con la sombra también s epuede dar el efeto de deprimido.")
                
                Text("Botones deprimidos")
                
                HStack(spacing: 60) {
                    
                    Button(action: {}) {
                        Image(systemName: "lightbulb.fill")
                    }
                    .frame(width: 80, height: 80)
                    .overlay(
                        Rectangle()
                            .stroke(Color.cyan
                                .opacity(0.2), lineWidth: 4)
                            .shadow(radius: 3, x: 4, y: 4)
                    )
                    .overlay(
                        Rectangle()
                            .stroke(Color.cyan
                                .opacity(0.2), lineWidth: 4)
                            .shadow(color: Color.cyan
                                .opacity(0.4),
                                    radius: 3,
                                    x: -4, y: -4)
                    )
                    .clipped()
                    
                }
                
                
            }
            
        }
    }
}

struct Shadow_DepressedEffect_Previews: PreviewProvider {
    static var previews: some View {
        Shadow_DepressedEffect()
    }
}

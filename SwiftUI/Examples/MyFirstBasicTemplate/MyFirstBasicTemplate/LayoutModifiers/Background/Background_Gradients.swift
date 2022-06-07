//
//  Background_Gradients.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 07/06/22.
//

import SwiftUI

struct Background_Gradients: View {
    
    private var gradientColors = Gradient(colors: [.blue, .yellow])
    
    var body: some View {
        
        let linearGradient = LinearGradient(gradient: gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
        
        return VStack(spacing: 20) {
            
            HeaderView(titulo: "Fondo", subtitulo: "Usando degradados", description: "Usar el modificador de background para agregar degradados a las vistas.")
            
            Text("Fondos con figuras degradadas")
            Circle()
                .frame(width: 132, height: 44)
                .background(linearGradient)
            
            Text("Fondo con degradado en controles")
            Button(action: {}) {
                Text("Botón")
                    .padding()
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
            }
            .background(linearGradient)
            .cornerRadius(15)
            
            Text("Fondo con degradado en vistas")
            HStack() {
                Text("Este es una pila")
                    .padding()
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity)
            .background(linearGradient)
            
        }
        .font(.title)
    }
}

struct Background_Gradients_Previews: PreviewProvider {
    static var previews: some View {
        Background_Gradients()
    }
}

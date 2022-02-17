//
//  ZStack_Layering.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 16/02/22.
//

import SwiftUI

struct ZStack_Layering: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "ZStack", subtitulo: "Layering & Aligning", description: "ZStacks son geniales para poner en capas las vistas")
            
            ZStack {
                
                Image("Lambeau_Field")
                    .resizable()
                    .scaledToFit()
                
                Rectangle()
                    .fill(Color.white.opacity(0.6))
                    .frame(maxWidth: .infinity, maxHeight: 50)
                
                Text("Lambeau Field")
                    .font(.title)
                    .padding()
            }
            
            DescView(description: "Si desearas tener todas las vistas alineadas al fondo ¿Cómo le harías?", backColor: .yellow)
            
        }
        .font(.title)
    }
}

struct ZStack_Layering_Previews: PreviewProvider {
    static var previews: some View {
        ZStack_Layering()
    }
}

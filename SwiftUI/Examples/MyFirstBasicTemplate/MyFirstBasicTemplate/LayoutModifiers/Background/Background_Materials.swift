//
//  Background_Materials.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 09/06/22.
//

import SwiftUI

struct Background_Materials: View {
    var body: some View {
        ZStack {
            Image("ARod")
                .resizable()
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                HeaderView(titulo: "Fondo", subtitulo: "Materials", description: "Agregar un material (efeto desenfoque) al fondo y a otras vistas")
                    .background(
                        .regularMaterial
                    )
                
                VStack(spacing: 20) {
                    Image(systemName: "square.filled.on.square")
                        .foregroundStyle(.secondary)
                    
                    Divider()
                    
                    Text("Agregar materiales como fondos")
                        .bold()
                    
                }
                .frame(maxWidth: .infinity)
                .background(.ultraThinMaterial)
                .cornerRadius(14)
                .padding()
                
            }
            .font(.title)
            
        }
    }
}

struct Background_Materials_Previews: PreviewProvider {
    static var previews: some View {
        Background_Materials()
    }
}

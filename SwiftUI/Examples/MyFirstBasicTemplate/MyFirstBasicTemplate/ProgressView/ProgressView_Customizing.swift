//
//  ProgressView_Customizing.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 10/03/22.
//

import SwiftUI

struct ProgressView_Customizing: View {
    @State private var progress = 0.50
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "ProgressView", subtitulo: "Personalizando", description: "Se puede poner el color del indicador con un accentColor.")
            
            ProgressView(value: progress, label: {
                HStack {
                    Spacer()
                    Text("Progress (\(Int(progress * 100))%)")
                        .font(.title)
                        .foregroundColor(.white)
                    Spacer()
                }
            })
                .accentColor(.yellow)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color.cyan)
                        .shadow(radius: 10, y: 16)
                )
                .padding(.horizontal)
            
            Text("Para la vista de progreso circular, se debe poner el color en el modificador de estilo: ")
                .padding(.horizontal)
            
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .cyan))

            
        }
        .font(.title)
    }
}

struct ProgressView_Customizing_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView_Customizing()
    }
}

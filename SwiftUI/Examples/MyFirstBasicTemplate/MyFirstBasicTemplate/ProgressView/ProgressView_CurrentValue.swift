//
//  ProgressView_CurrentValue.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 10/03/22.
//

import SwiftUI

struct ProgressView_CurrentValue: View {
    @State private var progress = 0.2
    @State private var current = 20
    @State private var total = 100
    
    var body: some View {
        VStack(spacing: 40) {
            HeaderView(titulo: "ProgressView", subtitulo: "Etiqueta de valor actual", description: "Se puede usar el parámetro")
            
            ProgressView(value: progress, label: {
                Text("Obtención de registros")
            }, currentValueLabel: {
                Text("\(current) del \(total)")
            })
                .padding()
            
            Text("Permite personalizaciones: ")
            ProgressView(value: progress, label: {
                Text("Obtención de registros")
            }) {
                Text("\(current) del \(total)")
                    .font(.title3)
                    .italic()
                    .foregroundColor(.cyan)
            }
            .padding()
            
        }
        .font(.title)
    }
}

struct ProgressView_CurrentValue_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView_CurrentValue()
    }
}

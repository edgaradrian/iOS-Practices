//
//  CornerRadius_FullyRoundedSides.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 02/07/22.
//

import SwiftUI

struct CornerRadius_FullyRoundedSides: View {
    var body: some View {
        VStack(spacing: 15) {
            HeaderView(titulo: "Radio de Esquina", subtitulo: "Lados completamente redondeados", description: "Hay diferentes maneras de obtener lados completamente redondos")
            
            Text("Usando la forma de cápsula")
                .font(.title)
            
            HStack(spacing: 40) {
                Button(action: {}) {
                    Image(systemName: "chart.bar.fill")
                        .padding()
                    Text("Botón")
                        .padding()
                }
                .padding(.horizontal)
                .background(
                    Capsule()
                        .foregroundColor(.blue)
                )
                
                Button(action: {}) {
                    Image(systemName: "chart.bar.fill")
                        .padding()
                    Text("Botón")
                        .padding()
                }
                .padding(.vertical)
                .background(
                    Capsule()
                        .foregroundColor(.blue)
                )
                
            }
            .font(.body)
            .foregroundColor(.white)
         
            Text("Usar un número que sea la mitad del altura/anchura o más grande para el cornerRadius")
            Image("packers")
                .resizable()
                .frame(width: 120, height: 100)
                .cornerRadius(.greatestFiniteMagnitude)
            
            
        }
        .font(.title)
    }
}

struct CornerRadius_FullyRoundedSides_Previews: PreviewProvider {
    static var previews: some View {
        CornerRadius_FullyRoundedSides()
    }
}

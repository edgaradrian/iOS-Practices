//
//  FixedSize_TextRuncated.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 10/06/22.
//

import SwiftUI

struct FixedSize_TextRuncated: View {
    var body: some View {
        VStack(spacing: 10) {
            
            HeaderView(titulo: "FixedSize", subtitulo: "Prevenir texto truncado", description: "Utilizando el modificador de ajuste de tamaño ayuda a prevenir que el texto sea truncado cuando layoutPriority no funciona.")
            
            Form {
                Section {
                    Text("Algunas veces el texto es truncado")
                    
                    Text("Este texto al parecer es demasiado largo y por lo tanto será truncado. Si es que no se utiliza fixedSize")
                        .listRowBackground(Color.yellow)
                        .layoutPriority(1)
                    
                    Text("Este texto al parecer es demasiado largo y por lo tanto será truncado. Si es que no se utiliza fixedSize")
                        .listRowBackground(Color.blue)
                        .fixedSize(horizontal: false, vertical: true)
                    
                } header: {
                    Text("Texto en un formulario")
                        .font(.largeTitle)
                }
            }
        }
        .font(.title2)
    }
}

struct FixedSize_TextRuncated_Previews: PreviewProvider {
    static var previews: some View {
        FixedSize_TextRuncated()
    }
}

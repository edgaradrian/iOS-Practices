//
//  Edges_KeyboardRegion_After.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 20/06/22.
//

import SwiftUI

struct Edges_KeyboardRegion_After: View {
    @State private var text = ""
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Ignorando el área segura", subtitulo: "Regiones", description: "El rectángulo azul ignora la región del teclado y no se elevará si el teclado es mostrado.")
            
            ZStack(alignment: .top) {
                Rectangle()
                    .fill(Color.blue)
                    .border(Color.red, width: 2)
                    .padding(.bottom)
                    .ignoresSafeArea(.keyboard)
                
                TextField("Utilizando el teclado", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
            }
            
        }
        .font(.title)
    }
}

struct Edges_KeyboardRegion_After_Previews: PreviewProvider {
    static var previews: some View {
        Edges_KeyboardRegion_After()
    }
}

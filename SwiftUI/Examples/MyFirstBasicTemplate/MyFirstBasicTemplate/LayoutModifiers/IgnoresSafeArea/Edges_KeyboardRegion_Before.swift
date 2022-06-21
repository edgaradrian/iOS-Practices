//
//  Edges_KeyboardRegion_Before.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 20/06/22.
//

import SwiftUI

struct Edges_KeyboardRegion_Before: View {
    
    @State private var text = ""
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Ignorando el área segura", subtitulo: "Regiones", description: "El área segura será más pequeña cuando se muestre un teclado. Esto eleverá todas tus vistas.")
            
            ZStack(alignment: .top) {
                Rectangle()
                    .fill(Color.blue)
                    .border(Color.red, width: 2)
                    .padding(.bottom)
                
                TextField("Utilizando el teclado", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
            }
            
        }
        .font(.title)
    }
}

struct Edges_KeyboardRegion_Before_Previews: PreviewProvider {
    static var previews: some View {
        Edges_KeyboardRegion_Before()
    }
}

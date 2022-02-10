//
//  VStack_Nesting.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 10/02/22.
//

import SwiftUI

struct VStack_Nesting: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "VStack", subtitulo: "Nesting", description: "Un VStack puede ser anidado dentro de otro VStack")
            
            VStack {
                Text("VStack dentro de otro VStack")
                Divider()
                Text("Esto ayuda")
                Divider()
                Text("Más de 10 vistas causan error")
            }
            .padding()
            .foregroundColor(.white)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.blue)
            )
            .padding()
            
            
        }
        .font(.title)
    }
}

struct VStack_Nesting_Previews: PreviewProvider {
    static var previews: some View {
        VStack_Nesting()
    }
}

//
//  Text_Alignment.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 27/03/22.
//

import SwiftUI

struct Text_Alignment: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Text", subtitulo: "Alineado de Texto Multilínea", description: "Por defecto, el texto se centrará en la pantalla. Usar el modificador multilineTextAlingment para cambiar el alineado del texto.")
            
            Text(".multilineTextAlignment(.center)")
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
            
            Text("¿Te he dicho lo asombrasa que pienso que eres?")
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Text(".multilineTextAlignment(.trailing)")
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .allowsTightening(true)
            
            Text("Eres súper asombrosa mejorando tus habilidades")
                .multilineTextAlignment(.trailing)
                .padding(.horizontal)
        }
        .font(.title)
    }
}

struct Text_Alignment_Previews: PreviewProvider {
    static var previews: some View {
        Text_Alignment()
    }
}

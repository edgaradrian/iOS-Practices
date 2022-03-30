//
//  Text_LayoutPriority.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 30/03/22.
//

import SwiftUI

struct Text_LayoutPriority: View {
    var body: some View {
        VStack {
            HeaderView(titulo: "Text", subtitulo: "Layout Priority", description: "Layout priority controla que vista será truncada al final. La vista que tenga menos prioridad será la que se trunque.")
                .layoutPriority(2)
            
            Text("Este es el texto que será truncado")
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
            
            Text("El texto de arriba será truncado porque su prioridad es de cero (por defecto). Este texto tiene una prioridad de 1. El texto de la cima tiene prioridad 2.")
                .font(.title)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .layoutPriority(1)
            
        }
    }
}

struct Text_LayoutPriority_Previews: PreviewProvider {
    static var previews: some View {
        Text_LayoutPriority()
    }
}

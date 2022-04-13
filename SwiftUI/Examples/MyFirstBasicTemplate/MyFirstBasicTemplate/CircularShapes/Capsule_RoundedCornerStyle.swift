//
//  Capsule_RoundedCornerStyle.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 13/04/22.
//

import SwiftUI

struct Capsule_RoundedCornerStyle: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Capsula", subtitulo: "Estilo de esquina redondeada", description: "La forma de capsula ofrece dos diferentes estilos para redondear sus esquinas.")
            
            Text("RoundedCornerStyle.circular")
            
            Capsule(style: RoundedCornerStyle.circular)
                .padding()
            
            Text("RoundedCornerStyle.continuous")
            
            Capsule(style: .continuous)
                .padding()
            
        }
        .font(.title)
    }
}

struct Capsule_RoundedCornerStyle_Previews: PreviewProvider {
    static var previews: some View {
        Capsule_RoundedCornerStyle()
    }
}

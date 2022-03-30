//
//  Text_Tracking.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 30/03/22.
//

import SwiftUI

struct Text_Tracking: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Text", subtitulo: "Tracking", description: "Tracking es utilizado para agregar o quitar espacio entre las letras.")
            
            Text("Normal Tracking")
            
            DescView(description: ".tracking(-2)", backColor: .blue)
            Text("Tracking descendente")
                .tracking(-2)
            
            DescView(description: ".tracking(8)", backColor: .blue)
            Text("Tracking ascendente")
                .tracking(8)
            
        }
        .font(.title)
    }
}

struct Text_Tracking_Previews: PreviewProvider {
    static var previews: some View {
        Text_Tracking()
    }
}

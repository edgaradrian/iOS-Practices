//
//  Text_ScaledMetric.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 30/03/22.
//

import SwiftUI

struct Text_ScaledMetric: View {
    @ScaledMetric private var fontSWize: CGFloat = 50
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Text", subtitulo: "ScaledMetric", description: "Se puede usar @ScaledMetric para ajustar la propiedad en función de dinámicamente incrementar o decrementar.")
            
            Text("Holaaaa... Enfermera")
            
            Text("Holaaaa... Enfermera")
                .font(.system(size: fontSWize))
            
            DescView(description: "No usando @ScaledMEtric", backColor: .blue)
            
            Text("Holaaaa... Enfermera")
                .font(.system(size: 50))
            
        }
        .font(.title)
    }
}

struct Text_ScaledMetric_Previews: PreviewProvider {
    static var previews: some View {
        Text_ScaledMetric()
    }
}

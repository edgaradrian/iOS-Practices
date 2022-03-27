//
//  Text_MinimumScaleFactor.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 27/03/22.
//

import SwiftUI

struct Text_MinimumScaleFactor: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Text", subtitulo: "Factor de escala mínimo", description: "Se puede contraer a un mínimo porcentaje de su original tamaño de fuente con este modificador.")
            
            Group {
                Text("Este texto es un conjunto a factor mínimo de 0.6")
                    .lineLimit(1)
                    .minimumScaleFactor(0.6)
                
                Text("Este texto es un conjunto a factor mínimo de 0.7")
                    .lineLimit(1)
                    .minimumScaleFactor(0.7)
                
                Text("Este texto es un conjunto a factor mínimo de 0.8")
                    .lineLimit(1)
                    .minimumScaleFactor(0.8)
                
                Text("Este texto es un conjunto a factor mínimo de 0.9")
                    .lineLimit(1)
                    .minimumScaleFactor(0.9)
            }
            .truncationMode(.middle)
            .padding(.horizontal)
        }
        .font(.title)
    }
}

struct Text_MinimumScaleFactor_Previews: PreviewProvider {
    static var previews: some View {
        Text_MinimumScaleFactor()
    }
}

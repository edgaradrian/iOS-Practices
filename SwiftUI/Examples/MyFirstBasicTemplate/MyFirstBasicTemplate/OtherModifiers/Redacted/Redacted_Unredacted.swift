//
//  Redacted_Unredacted.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 31/07/22.
//

import SwiftUI

struct Redacted_Unredacted: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Suprimido", subtitulo: "Usando sin suprimir", description: "También se puede dejar de suprimir un texto suprimido")
            
            VStack(spacing: 20) {
                
                Text("Suprime esto")
                Text("Suprime esto")
                Text("Suprime esto también")
                Text("No suprimas esto")
                    .unredacted()
                Text("Suprime esto")
                
            }
            .redacted(reason: .placeholder)
            
        }
        .font(.title)
    }
}

struct Redacted_Unredacted_Previews: PreviewProvider {
    static var previews: some View {
        Redacted_Unredacted()
    }
}

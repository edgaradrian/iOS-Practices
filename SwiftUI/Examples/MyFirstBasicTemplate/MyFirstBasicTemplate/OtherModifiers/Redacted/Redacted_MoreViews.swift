//
//  Redacted_MoreViews.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 31/07/22.
//

import SwiftUI

struct Redacted_MoreViews: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Redactado", subtitulo: "Más vistas", description: "Aquí otras vistas que también son modificadas por el modificador de redactado.")
        
            VStack(spacing: 20) {
                Text("Botones")
                Button("Redacta este botón", action: {})
                    .redacted(reason: .placeholder)
                
                Text("Etiquetas")
                Label(title: { Text("Etiqueta Redactada") }, icon: { Image(systemName: "wifi") })
                    .redacted(reason: .placeholder)
                
                Text("Ligas")
                Link("Apples", destination: URL(string: "https://www.apple.com")!)
                    .tint(.blue)
                    .redacted(reason: .placeholder)
                
            }
            .padding(.horizontal)
        
        }
        .font(.title)
    }
}

struct Redacted_MoreViews_Previews: PreviewProvider {
    static var previews: some View {
        Redacted_MoreViews()
    }
}

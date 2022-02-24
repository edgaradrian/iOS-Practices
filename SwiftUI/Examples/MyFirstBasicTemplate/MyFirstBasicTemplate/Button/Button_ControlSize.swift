//
//  Button_ControlSize.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 24/02/22.
//

import SwiftUI

struct Button_ControlSize: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Button", subtitulo: "ControlSize", description: "Usa controlSize para cambiar la cantidad de relleno alrededor del contenido del boton")
        
            Button("Bordered - Mini") { }
            .buttonStyle(.bordered)
            .controlSize(.mini)
            
            Button("Bordered - Small") { }
            .buttonStyle(.bordered)
            .controlSize(.small)
            
            Button("Bordered - Regular") { }
            .buttonStyle(.bordered)
            .controlSize(.regular)
            
            Button("Bordered - Large") { }
            .buttonStyle(.bordered)
            .controlSize(.large)
            
            Button(action: {}) {
                Text("Bordered - Large")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
        
        }
        .accentColor(.blue)
        .font(.title)
    }
}

struct Button_ControlSize_Previews: PreviewProvider {
    static var previews: some View {
        Button_ControlSize()
    }
}

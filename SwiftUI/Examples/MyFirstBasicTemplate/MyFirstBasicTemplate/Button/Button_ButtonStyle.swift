//
//  Button_ButtonStyle.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 24/02/22.
//

import SwiftUI

struct Button_ButtonStyle: View {
    var body: some View {
        VStack(spacing: 60) {
            
            HeaderView(titulo: "Button", subtitulo: "ButtonStyle", description: "Se pueden aplicar estilos a los botones con el modificador buttonStyle")
            
            Button("Automatic") { }
            .buttonStyle(.automatic)
            
            Button("Bordered") { }
            .buttonStyle(.bordered)
            
            Button("BorderedProminent") { }
            .buttonStyle(.borderedProminent)
            
            Button("Borderless") { }
            .buttonStyle(.borderless)

            Button("Plain") { }
            .buttonStyle(.plain)
            
        }
        .font(.title)
        .accentColor(.purple)
    }
}

struct Button_ButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button_ButtonStyle()
    }
}

//
//  Button_ButtonBorderShape.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 24/02/22.
//

import SwiftUI

struct Button_ButtonBorderShape: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Button", subtitulo: "ButtonBorderShape", description: "Pon una figura para encapsular o redondear los botones")
            
            Button("Automatic") { }
            .buttonStyle(.bordered)
            .buttonBorderShape(.automatic)
            .controlSize(.large)
            
            Button("Automatic") { }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.automatic)
            .controlSize(.large)
            
            Button("Capsule") { }
            .buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            
            Button("RoundedRectangle") { }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
            
            Button("Set Radious") { }
            .buttonStyle(.bordered)
            .buttonBorderShape(.roundedRectangle(radius: 0))
            .controlSize(.large)
            
        }
        .font(.title)
        .accentColor(.orange)
    }
}

struct Button_ButtonBorderShape_Previews: PreviewProvider {
    static var previews: some View {
        Button_ButtonBorderShape()
    }
}

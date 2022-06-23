//
//  Overlay_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 23/06/22.
//

import SwiftUI

struct Overlay_Intro: View {
    var body: some View {
        Color.yellow
            .opacity(0.4)
            .overlay(
                HeaderView(titulo: "Superposición", subtitulo: "Introducción", description: "Aquí la vista del cabecero de sobrepone al color para así poner un fondo.")
            )
    }
}

struct Overlay_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Overlay_Intro()
    }
}

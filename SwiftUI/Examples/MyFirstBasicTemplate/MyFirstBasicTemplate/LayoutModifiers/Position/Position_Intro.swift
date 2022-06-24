//
//  Position_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 24/06/22.
//

import SwiftUI

struct Position_Intro: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView(titulo: "Posición", subtitulo: "Introducción", description: "Cuando se utiliza el modificador de posición, la vista cambia de empujar hacia dentro para afuera.")
            
            Text("Ningún modificador de posición")
                .border(Color.red)
            
            Text("Con modificador de posición")
                .position(x: 200, y: 80)
                .border(Color.red, width: 5)
            
            DescView(description: "Los límites de la vista empujan hacia afuera para tomar todo el espacio disponible.", backColor: .blue)
            
        }
        .font(.title)
    }
}

struct Position_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Position_Intro()
    }
}

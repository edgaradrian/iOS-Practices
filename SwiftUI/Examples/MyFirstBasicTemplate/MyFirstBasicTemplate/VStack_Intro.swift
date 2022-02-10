//
//  VStack_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 10/02/22.
//

import SwiftUI

struct VStack_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "VStack", subtitulo: "Introducción", description: "Un VStack organiza verticalmente otras vistas dentro de él")
            Text("Vista 2")
            Text("Vista 3")
            Text("Vista 4")
            Text("Vista 5")
            Text("Vista 6")
            Text("Vista 7")
            Text("Vista 8")
            Text("Vista 9")
            Text("Vista 10")
        }
        .font(.title)
    }
}

struct VStack_Intro_Previews: PreviewProvider {
    static var previews: some View {
        VStack_Intro()
    }
}

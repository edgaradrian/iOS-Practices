//
//  HStack_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 11/02/22.
//

import SwiftUI

struct HStack_Intro: View {
    var body: some View {
        VStack(spacing: 40) {
            
            HeaderView(titulo: "HStack", subtitulo: "Introducción", description: "Un Hstack organiza las vistas horizontalmente")
            
            HStack {
                Text("View 1")
                Text("View 2")
                Text("View 3")
            }
        }
        .font(.title)
    }
}

struct HStack_Intro_Previews: PreviewProvider {
    static var previews: some View {
        HStack_Intro()
    }
}

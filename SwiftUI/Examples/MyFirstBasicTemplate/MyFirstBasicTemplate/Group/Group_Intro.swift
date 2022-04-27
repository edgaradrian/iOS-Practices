//
//  Group_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 27/04/22.
//

import SwiftUI

struct Group_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Group", subtitulo: "Introducción", description: "Un grupo puede ser usado para construir una vista con más de 10 vistas hijas.")
            
            Text("Vista 2")
            Text("Vista 3")
            Text("Vista 4")
            Text("Vista 5")
            Text("Vista 6")
            Text("Vista 7")
            Text("Vista 8")
            Text("Vista 9")
            
            Group {
                Text("Vista 1 (Dentro del Group)")
                Text("Vista 2 (Dentro del Grupo)")
            }
            
        }
    }
}

struct Group_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Group_Intro()
    }
}

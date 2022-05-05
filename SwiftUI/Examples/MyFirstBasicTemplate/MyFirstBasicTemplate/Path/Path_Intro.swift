//
//  Path_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 04/05/22.
//

import SwiftUI

struct Path_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Path", subtitulo: "Introducción", description: "Un path no es una vista por sí mismo. Pero se puede modificar para hacer una vista.")
            
            Text("No se puede ver este path porque no tiene modificador.")
            
            Path { path in
                path.move(to: CGPoint(x: 10, y: 10))
                path.addLine(to: CGPoint(x: 300, y: 10))
            }
            
            Text("Ahora un path con modificadores: ")
            
            Path { path in
                path.move(to: CGPoint(x: 10, y: 10))
                path.addLine(to: CGPoint(x: 200, y: 10))
            }
            .strokedPath(StrokeStyle(lineWidth: 5))
            .foregroundColor(.cyan)
            
            Text("Mi propio divisor")
            MyDivider(lineWidth: 10, color: .cyan)
            
        }
        .font(.title)
    }
}

struct Path_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Path_Intro()
    }
}

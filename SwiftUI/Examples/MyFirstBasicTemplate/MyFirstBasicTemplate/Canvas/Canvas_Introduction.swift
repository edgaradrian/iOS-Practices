//
//  Canvas_Introduction.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 11/04/22.
//

import SwiftUI

struct Canvas_Introduction: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Canvas", subtitulo: "Introduction", description: "Se usan las canvas cuando se desea crear un área que se dibuje adentro.")
            
            Canvas { context, size in
                context.stroke(Path(ellipseIn: CGRect(origin: CGPoint(x: 4, y: 4), size: CGSize(width: size.width - 8, height: size.height - 8))), with: .color(.cyan), lineWidth: 4)
                
                let image = Image(systemName: "scribble.variable")
                context.draw(image, at: CGPoint(x: size.width/2, y: size.height/2))
                
            }
            .padding()
            
            DescView(description: "Usar el contexto para dibujar. Usar el tamaño de referencia del tamaño de canvas.", backColor: .blue)
        }
    }
}

struct Canvas_Introduction_Previews: PreviewProvider {
    static var previews: some View {
        Canvas_Introduction()
    }
}

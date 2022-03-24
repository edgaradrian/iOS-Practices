//
//  Text_FontDesign.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 24/03/22.
//

import SwiftUI

struct Text_FontDesign: View {
    var body: some View {
        VStack(spacing: 10) {
            
            HeaderView(titulo: "Text", subtitulo: "Diseño de Fuente", description: "Hay 4 diseño de fuentes en este momento en iOS. Usar Font.system y elegir el diseño deseado.")
            
            Text("Diseño predeterminado")
                .font(Font.system(size: 30, design: Font.Design.default))
            
            Text("Aquí monospaced")
                .font(.system(size: 30, design: .monospaced))
            
            Text("Aquí rounded")
                .font(.system(size: 30, design: .rounded))
            
            Text("Aca serif ")
                .font(.system(.title, design: .serif))
            
            DescView(description: "Un diseño \"serif\" es una pequeña pieza que se desprende de la letra.", backColor: .blue)
        }
    }
}

struct Text_FontDesign_Previews: PreviewProvider {
    static var previews: some View {
        Text_FontDesign()
    }
}

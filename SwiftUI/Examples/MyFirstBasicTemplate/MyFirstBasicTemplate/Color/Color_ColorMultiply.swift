//
//  Color_ColorMultiply.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 20/04/22.
//

import SwiftUI

struct Color_ColorMultiply: View {
    var body: some View {
        VStack(spacing: 30) {
            HeaderView(titulo: "Color", subtitulo: "Color Combinado", description: "Se pueden combinar colores para formar nuevos colores con el modificador .colorMultiply")
            
            HStack {
                Color.pink.frame(width: 88, height: 88)
                Image(systemName: "plus")
                Color.blue.frame(width: 88, height: 88)
                Image(systemName: "equal")
                Color.pink.colorMultiply(.blue)
                    .frame(width: 88, height: 88)
            }
            
            HStack {
                Color.cyan.frame(width: 88, height: 88)
                Image(systemName: "plus")
                Color.green.frame(width: 88, height: 88)
                Image(systemName: "equal")
                Color.cyan.colorMultiply(.green)
                    .frame(width: 88, height: 88)
            }
            
            HStack {
                Color.red.frame(width: 88, height: 88)
                Image(systemName: "plus")
                Color.yellow.frame(width: 88, height: 88)
                Image(systemName: "equal")
                Color.red.colorMultiply(.yellow)
                    .frame(width: 88, height: 88)
            }
            
        }
        .font(.title)
    }
}

struct Color_ColorMultiply_Previews: PreviewProvider {
    static var previews: some View {
        Color_ColorMultiply()
    }
}

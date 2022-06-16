//
//  Frame_Min_Max.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 16/06/22.
//

import SwiftUI

struct Frame_Min_Max: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Marco", subtitulo: "Tamaño mínimo y máximo", description: "Una característica importante del modificador de marco, son los límites que se pueden poner de máximo y mínimo a lo ancho y a lo alto.")
            
            HStack {
                Image(systemName: "arrow.left")
                Text("Se expande infinitamente en horizontal")
                    .padding()
                Image(systemName: "arrow.right")
            }
            .frame(maxWidth: .infinity)
            .background(
                Color.blue
            )
            
            VStack {
                Image(systemName: "arrow.up")
                Text("Se expande infinitamente en vertical")
                    .padding()
                Image(systemName: "arrow.down")
            }
            .frame(minHeight: 0, maxHeight: .infinity)
            .background(
                Color.blue
            )
            
        }
        .font(.title)
        .foregroundColor(.white)
    }
}

struct Frame_Min_Max_Previews: PreviewProvider {
    static var previews: some View {
        Frame_Min_Max()
    }
}

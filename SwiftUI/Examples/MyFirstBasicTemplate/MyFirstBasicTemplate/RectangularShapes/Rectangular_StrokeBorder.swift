//
//  Rectangular_StrokeBorder.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 16/05/22.
//

import SwiftUI

struct Rectangular_StrokeBorder: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                HeaderView(titulo: "Formas Rectangulares", subtitulo: "Tamaño", description: "Usando modificadores, como de relleno o ajuste, se pueden trabajar las formas.")
                
                Text("Usando relleno")
                ZStack {
                    Rectangle().padding()
                    Rectangle().padding(40).colorInvert()
                    Rectangle().padding(60)
                    Rectangle().padding(80).colorInvert()
                }
                .frame(width: 200, height: 200)
                
                Text("Usando marcos")
                ZStack(alignment: .bottomLeading) {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.secondary)
                        .frame(width: 320, height: 250)
                
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.secondary)
                        .frame(width: 270, height: 200)
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.secondary)
                        .frame(width: 220, height: 150)
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.secondary)
                        .frame(width: 170, height: 100)
                
                }
                
                
            }
            .font(.title)
        }
    }
}

struct Rectangular_StrokeBorder_Previews: PreviewProvider {
    static var previews: some View {
        Rectangular_StrokeBorder()
    }
}

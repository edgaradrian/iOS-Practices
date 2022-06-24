//
//  Position_GeometryReader.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 24/06/22.
//

import SwiftUI

struct Position_GeometryReader: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView(titulo: "Posición", subtitulo: "Dentro de Geometry Reader", description: "El posicionamiento relativo con dentro de un geometry reader trabajará mejro en todos los dispositivos.")
            
            GeometryReader { g in
                ZStack {
                    Image(systemName: "1.circle.fill")
                        .foregroundColor(.cyan)
                        .position(x: 20, y: 20)
                    
                    Image(systemName: "2.circle.fill")
                        .foregroundColor(.yellow)
                        .position(x: g.size.width - 20, y: 20)
                    
                    Image(systemName: "plus.circle")
                        .foregroundColor(.mint)
                        .position(x: g.size.width/2, y: g.size.height/2)
                    
                    Image(systemName: "3.circle.fill")
                        .foregroundColor(.green)
                        .position(x: 20, y: g.size.height - 20)
                    
                    Image(systemName: "4.circle.fill")
                        .foregroundColor(.cyan)
                        .position(x: g.size.width - 20, y: g.size.height - 20)
                    
                }
            }
            .border(Color.red, width: 5)
        }
    }
}

struct Position_GeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        Position_GeometryReader()
    }
}

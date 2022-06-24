//
//  Position_Coordinates.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 24/06/22.
//

import SwiftUI

struct Position_Coordinates: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Posición", subtitulo: "Introducción", description: "X y Y empiezan en la esquina superior derecha.")
            
            ZStack {
                Text("50, 20")
                    .position(x: 50, y: 20)
                
                Text("350, 20")
                    .position(x: 350, y: 20)
                
                Text("60, 230")
                    .position(x: 60, y: 230)
                
                Text("350, 230")
                    .position(x: 350, y: 230)
                
            }
            .border(Color.blue, width: 5)
            
            DescView(description: "Lo que se posiciona es el centro de la vista", backColor: .blue)
            
        }
    }
}

struct Position_Coordinates_Previews: PreviewProvider {
    static var previews: some View {
        Position_Coordinates()
    }
}

//
//  CoordinateSpace_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 10/06/22.
//

import SwiftUI

struct CoordinateSpace_Intro: View {
    
    @State var location = CGPoint.zero
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Espacio de Coordenadas", subtitulo: "Introducción", description: "Se utiliza del modificador coordinateSpace para nombre un espacio de coordenadas para poder ser referida donde sea.")
            
            Text("La posición del punto morado comienza en 0,0 en el espacio de coordenadas azul.")
                .padding(.horizontal)
            
            Color.blue
                .frame(width: 200, height: 200)
                .opacity(0.5)
                .overlay(
                    PurpleCircle(location: $location)
                )
                .coordinateSpace(name: BlueSquareSpace)
            
            Text("Location: \(Int(location.x)), \(Int(location.y))")
            
        }
        .font(.title)
    }
}

struct CoordinateSpace_Intro_Previews: PreviewProvider {
    static var previews: some View {
        CoordinateSpace_Intro()
    }
}

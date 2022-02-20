//
//  GeometryReader_GettingCoordinates.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 20/02/22.
//

import SwiftUI

struct GeometryReader_GettingCoordinates: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView(titulo: "GeometryReader", subtitulo: "Obteniendo Coordenadas", description: "Obteniendo las coordenadas (x,y) de una vista geometrica es un poco diferente. ")
                .layoutPriority(1)
            
            GeometryReader { geometryProxy in
                VStack(spacing: 10) {
                    Text("X: \(geometryProxy.frame(in: CoordinateSpace.local).origin.x)")
                    Text("Y: \(geometryProxy.frame(in: CoordinateSpace.local).origin.y)")
                }
                .foregroundColor(.white)
            }
            .background(Color.yellow)
            
            Text("el espacio de coordenadas local, siempre te dará ceros.")
            Text("Se necesita mirar las coordenadas globales de la actual vista")
            
            GeometryReader { geometryProxy in
                VStack(spacing: 10) {
                    Text("X: \(geometryProxy.frame(in: .global).origin.x)")
                    Text("Y: \(geometryProxy.frame(in: .global).origin.y)")
                }
                .foregroundColor(.white)
            }
            .background(Color.yellow)
            .frame(height: 200)
        }
        .font(.title)
        .padding(.horizontal)
    }
}

struct GeometryReader_GettingCoordinates_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader_GettingCoordinates()
    }
}

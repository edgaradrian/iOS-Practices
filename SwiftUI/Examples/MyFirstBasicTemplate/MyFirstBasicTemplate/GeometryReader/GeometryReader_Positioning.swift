//
//  GeometryReader_Positioning.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 18/02/22.
//

import SwiftUI

struct GeometryReader_Positioning: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("GeometryReader")
                .font(.largeTitle)
            Text("Positioning")
                .font(.title)
                .foregroundColor(.gray)
            Text("Usa el parámetro de entrada GeometryProxy para posicionar las vistas hijas en diferentes ubicaciones dentro de la geometría de la vista.")
                .font(.title)
                .padding()
            
            GeometryReader { geometryProxy in
                Text("Upper Left")
                    .font(.title)
                    .position(x: geometryProxy.size.width/5, y: geometryProxy.size.height/10)
                
                Text("Lower Right")
                    .font(.title)
                    .position(x: geometryProxy.size.width - 90, y: geometryProxy.size.height - 40)
            }
            .background(Color.yellow)
            .foregroundColor(.white)
            
            Text("Nota: el modificador de posición usa el centro de la vista cuando se ponen los parámetro X y Y")
                .font(.title)
            
        }
    }
}

struct GeometryReader_Positioning_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader_Positioning()
    }
}

//
//  Shapes.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 08/02/22.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Shapes")
                .font(.largeTitle)
            
            Text("Pequeña introducción a formas")
                .foregroundColor(.gray)
            
            Text("Haré unas formas, daré color y otras vistas para su decoración")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
            
            Text("Este texto tiene un rectángulo detrás de él")
                .foregroundColor(.white)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.blue)
                )
                .padding()
            
            Text("Pero algunas veces usaré color y corner radius")
            
            Text("Este texto tiene un color con un corner radiuos")
                .foregroundColor(.white)
                .padding()
                .background(.blue)
                .cornerRadius(20)
            
        }
        .font(.title)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}

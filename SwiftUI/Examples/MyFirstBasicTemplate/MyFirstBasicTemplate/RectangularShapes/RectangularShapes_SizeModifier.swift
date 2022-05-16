//
//  RectangularShapes_SizeModifier.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 16/05/22.
//

import SwiftUI

struct RectangularShapes_SizeModifier: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView(titulo: "Formas Rectangulares", subtitulo: "Modificador de Tamaño", description: "Se pueden utilizar modificadores de tamaño para definir altura y anchura.")
            
            Group {
                Text("Rectangulo usando .size(width: 80, height: 80)")
                Rectangle()
                    .size(width: 80, height: 80)
                    .background(Color.blue)
                
                Text("Rectangulo Redondeado usando ")
                RoundedRectangle(cornerRadius: 20)
                    .size(width: 200, height: 180)
                    .background(Color.blue)
                
            }
            .padding(20)
            
        }
        .font(.title)
    }
}

struct RectangularShapes_SizeModifier_Previews: PreviewProvider {
    static var previews: some View {
        RectangularShapes_SizeModifier()
    }
}

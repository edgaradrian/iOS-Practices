//
//  Form_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 25/02/22.
//

import SwiftUI

struct Form_Intro: View {
    var body: some View {
        Form {
            Section {
                Text("This is a Form!")
                    .font(.title)
                Text("Se puede poner cualquier tipo de contenido aquí")
                Text("Las celdas crecerán para ajustar el contenido")
                Text("Recordar, son sólo vistas dentro de vistas")
            }
            
            Section {
                Text("Limitaciones")
                    .font(.title)
                Text("Hay margenes destruidos que son dificiles de desplazarse. Aquí una prueba en el color y se ven dónde están los margenes.")
                Color.cyan
            }
            
            Section {
                Text("Resumen")
                    .font(.title)
                Text("Este es el primer form")
            }
            
        }
    }
}

struct Form_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Form_Intro()
    }
}

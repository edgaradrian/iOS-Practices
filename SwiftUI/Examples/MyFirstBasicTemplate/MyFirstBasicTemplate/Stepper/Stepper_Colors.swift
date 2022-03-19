//
//  Stepper_Colors.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 18/03/22.
//

import SwiftUI

struct Stepper_Colors: View {
    @State private var contrast = 30
    
    var body: some View {
        VStack {
            
            HeaderView(titulo: "Stepper", subtitulo: "Colors", description: "No hay una forma de cmabiar el color del Stepper, en lugar de eso, se puede poner el color de fondo.")
            
            Stepper(value: $contrast, in: 0...100) {
                Text("Aplicando el AccentColor no tiene efecto")
            }
            .accentColor(.blue)
            
            HStack {
                Text("El stepper coloreado.")
                Spacer()
                Stepper("", value: $contrast)
                    .background(Color.cyan)
                    .cornerRadius(9)
                    .labelsHidden()
            }
            
            HStack {
                Text("El stepper coloreado.")
                Spacer()
                Stepper("", value: $contrast)
                    .background(Color.red)
                    .cornerRadius(9)
                    .labelsHidden()
            }
            
        }
    }
}

struct Stepper_Colors_Previews: PreviewProvider {
    static var previews: some View {
        Stepper_Colors()
    }
}

//
//  Stepper_Customization.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 18/03/22.
//

import SwiftUI

struct Stepper_Customization: View {
    @State private var contrast = 50
    
    var body: some View {
        
        HeaderView(titulo: "Stepper", subtitulo: "Personalización", description: "Un color de foreground y background pueden ser puestos.")
        
        Stepper(onIncrement: {}, onDecrement: {}) {
            Text("Stepper personalizado")
                .font(.title)
                .padding(.vertical)
        }
        .padding(.horizontal)
        .background(Color.blue)
        .foregroundColor(.white)
        
        Text("Notar que los botones de más y menos no son afectados, La plataforma decide cómo se mostrarán.")
            .frame(maxWidth: .infinity)
            .foregroundColor(.black)
            .background(Color.clear)
            .padding()
        
        Text("Se pueden agregar imágenes también.")
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .font(.title)
        
        Stepper(value: $contrast, in: 0...100) {
            Image(systemName: "circle.lefthalf.fill")
            Text(" \(contrast)/100")
        }
        .font(.title)
        .padding(.horizontal)
        .foregroundColor(.blue)
        
    }
}

struct Stepper_Customization_Previews: PreviewProvider {
    static var previews: some View {
        Stepper_Customization()
    }
}

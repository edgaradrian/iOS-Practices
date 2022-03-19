//
//  Stepper_LabelHidden.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 18/03/22.
//

import SwiftUI

struct Stepper_LabelHidden: View {
    @State private var stepperValue = 1
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Stepper", subtitulo: "Opciones de etiqueta", description: "Se puede declarar un stepper con sólo un string en la etiqueta")
            
            Stepper("¿Cuál es tu edad?", value: $stepperValue)
                .padding(.horizontal)
            
            Text("Se puede omitir el label también. Notar que el label empuja de forma horizontal.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
            
            Stepper("", value: $stepperValue)
                .padding(.horizontal)
            
            Text("Para esconder el label sin dejar espacio.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
            
            Stepper("¿Cuál es tu edad?", value: $stepperValue)
                .padding(.horizontal)
                .labelsHidden()
            
        }
        .font(.title)
    }
}

struct Stepper_LabelHidden_Previews: PreviewProvider {
    static var previews: some View {
        Stepper_LabelHidden()
    }
}

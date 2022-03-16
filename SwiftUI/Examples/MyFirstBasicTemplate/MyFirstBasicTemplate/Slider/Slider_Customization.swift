//
//  Slider_Customization.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 16/03/22.
//

import SwiftUI

struct Slider_Customization: View {
    @State private var sliderValue = 0.5
    
    var body: some View {
        HeaderView(titulo: "Slider", subtitulo: "Personalización", description: "Se pueden aplicar cambios en el color de fondo y aplicar otros modificadores.")
        
        Slider(value: $sliderValue)
            .padding(.horizontal, 10)
            .background(Color.blue)
            .shadow(color: .gray, radius: 2)
            .padding(.horizontal)
        
        Text("Usando el accentColor modificador para el color del riel.")
            .frame(maxWidth: .infinity)
            .foregroundColor(.white)
            .font(.title)
            .padding()
            .background(Color.blue)
        
        Slider(value: $sliderValue)
            .padding(.horizontal)
            .accentColor(.orange)
        
        Text("Usando formas y trazados")
            .frame(maxWidth: .infinity)
            .foregroundColor(.white)
            .font(.title)
            .padding()
            .background(Color.blue)
        
        Slider(value: $sliderValue)
            .padding(10)
            .background(Capsule().stroke(Color.blue, lineWidth: 2))
            .padding(.horizontal)
        
        Slider(value: $sliderValue)
            .padding(10)
            .background(Capsule().fill(Color.blue))
            .accentColor(.black)
            .padding(.horizontal)
        
    }
}

struct Slider_Customization_Previews: PreviewProvider {
    static var previews: some View {
        Slider_Customization()
    }
}

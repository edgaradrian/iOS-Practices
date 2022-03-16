//
//  Slider_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 16/03/22.
//

import SwiftUI

struct Slider_Intro: View {
    @State private var sliderValue = 0.3

    var body: some View {
        VStack(spacing: 40) {
            HeaderView(titulo: "Slider", subtitulo: "Introducción", description: "Se asocia el Slider con una variable State que controlará el círculo que se mostrará en el riel")
            
            Text("El valor mínimo es 0.0 y el máximo es 1.0")
            
            Slider(value: $sliderValue)
                .padding(.horizontal)
            
            Text("El valor es: ") +
            Text("\(sliderValue)%").foregroundColor(.blue)
            
        }
        .font(.title)
    }
}

struct Slider_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Slider_Intro()
    }
}

//
//  Accessibility_ReadingValues.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 01/08/22.
//

import SwiftUI

struct Accessibility_ReadingValues: View {
    
    @State private var sliderValue = 1.0
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Accesibilidad", subtitulo: "Leyendo valores", description: "A veces VoiceOver no lee bien los valores, por lo que necesita un poco de ayuda.")
            
            
            Slider(value: $sliderValue, in: 1...10, step:1, label: {}) {
                Image(systemName: "speaker.fill")
            } maximumValueLabel: {
                Image(systemName: "speaker.wave.3.fill")
            }
            .accessibilityLabel(Text("Valor"))
            .accessibilityValue(Text("\(Int(sliderValue))"))
            .foregroundColor(.blue)
            .padding()

        }
        .font(.title)
    }
}

struct Accessibility_ReadingValues_Previews: PreviewProvider {
    static var previews: some View {
        Accessibility_ReadingValues()
    }
}

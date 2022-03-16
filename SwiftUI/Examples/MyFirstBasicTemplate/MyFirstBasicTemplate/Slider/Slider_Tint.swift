//
//  Slider_Tint.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 16/03/22.
//

import SwiftUI

struct Slider_Tint: View {
    @State private var sliderValue = 0.3
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Slider", subtitulo: "Tint", description: "Tint puede tmabién cambiar el color del rail en el Slider.")
            
            Slider(value: $sliderValue, minimumValueLabel: Image(systemName: "tortoise"), maximumValueLabel: Image(systemName: "hare"), label: {})
                .foregroundColor(.cyan)
                .tint(.cyan)
                .padding()
            
        }
        .font(.title)
    }
}

struct Slider_Tint_Previews: PreviewProvider {
    static var previews: some View {
        Slider_Tint()
    }
}

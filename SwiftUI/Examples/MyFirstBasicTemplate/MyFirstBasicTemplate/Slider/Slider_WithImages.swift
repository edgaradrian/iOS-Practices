//
//  Slider_WithImages.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 16/03/22.
//

import SwiftUI

struct Slider_WithImages: View {
    @State private var sliderValue = 0.3
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Slider", subtitulo: "Con imágenes", description: "Combina el slider con imágenes y valores")
            
            Slider(value: $sliderValue, minimumValueLabel: Image(systemName: "tortoise"), maximumValueLabel: Image(systemName: "hare"), label: {})
                .foregroundColor(.blue)
                .padding()
            
            Slider(value: $sliderValue, minimumValueLabel: Text("0"), maximumValueLabel: Text("1"), label: {})
                .padding()
            
            VStack {
                Slider(value: $sliderValue)
                    .accentColor(.blue)
                HStack {
                    Image(systemName: "circle")
                    Spacer()
                    Image(systemName: "circle.righthalf.fill")
                    Spacer()
                    Image(systemName: "circle.fill")
                }
                .foregroundColor(.blue)
                .padding(.top, 8)
            }
            .padding()
            
        }
        .font(.title)
    }
}

struct Slider_WithImages_Previews: PreviewProvider {
    static var previews: some View {
        Slider_WithImages()
    }
}

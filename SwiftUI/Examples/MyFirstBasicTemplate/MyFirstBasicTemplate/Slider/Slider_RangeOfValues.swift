//
//  Slider_RangeOfValues.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 16/03/22.
//

import SwiftUI

struct Slider_RangeOfValues: View {
    @State private var age = 34.0
    
    let ageFormatter: NumberFormatter = {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .spellOut
        return numberFormatter
    }()
    
    var body: some View {
        VStack(spacing: 40) {
            HeaderView(titulo: "Slider", subtitulo: "Rango de Valores", description: "También se pude poner los valores mínimo y máximo personalizados.")
            
            Text("¿Cuál es tu edad?")
            
            Slider(value: $age, in: 1...100, step: 1)
                .padding(.horizontal)
            
            Text("La edad es: ") +
            Text("\(ageFormatter.string(from: NSNumber(value: age))!)")
                .foregroundColor(.blue)
            
        }
        .font(.title)
    }
}

struct Slider_RangeOfValues_Previews: PreviewProvider {
    static var previews: some View {
        Slider_RangeOfValues()
    }
}

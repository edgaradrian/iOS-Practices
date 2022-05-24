//
//  LinearGradient_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 24/05/22.
//

import SwiftUI

struct LinearGradient_Intro: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: gradientColors,
                           startPoint: .top,
                           endPoint: .bottom)
            .ignoresSafeArea()
            
            VStack(spacing: 20) {
                HeaderView(titulo: "LinearGradient", subtitulo: "Introducción", description: "Cuando se crea un degradado, se puede especificar un un arreglo de colores y un punto de inicio y final para establecer la dirección del degradado.")
            }
            
            
        }
    }
}

struct LinearGradient_Intro_Previews: PreviewProvider {
    static var previews: some View {
        LinearGradient_Intro()
    }
}

let gradientColors = [Color.blue, Color.yellow]

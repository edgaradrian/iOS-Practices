//
//  Conic_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 19/05/22.
//

import SwiftUI

struct Conic_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Degradado Cónico", subtitulo: "Introducción", description: "El degradado cónico luce como el degradado angular pero el ángulo es opcional")
                .layoutPriority(1)
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.conicGradient(gradient, center: .center))
                .overlay(Text("Degradado Angular"), alignment: .top)
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.angularGradient(gradient, center: .center, startAngle: .degrees(90), endAngle: .degrees(270)))
                .overlay(
                    Text("Degradado Angular"), alignment: .top
                )
            
        }
        .font(.title)
    }
}

struct Conic_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Conic_Intro()
    }
}

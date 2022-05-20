//
//  ConicGradient_Angle.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 19/05/22.
//

import SwiftUI

struct ConicGradient_Angle: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Gradiente Cónico", subtitulo: "Ángulo", description: "El parámetro ángulo es dónde el primer color empieza")
            
            HStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(.conicGradient(gradient, center: .center, angle: .degrees(45)))
                    .overlay(
                        Text("45º"), alignment: .top
                    )
                
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(.conicGradient(gradient, center: .center, angle: .degrees(90)))
                    .overlay(
                        Text("90º"), alignment: .top
                    )
                
            }
            
            HStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(.conicGradient(gradient, center: .center, angle: .degrees(180)))
                    .overlay(
                        Text("180º"), alignment: .top
                    )
                
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(.conicGradient(gradient, center: .center, angle: .degrees(270)))
                    .overlay(
                        Text("270º"), alignment: .top
                    )
                
            }
            
            
        }
        .font(.title)
    }
}

struct ConicGradient_Angle_Previews: PreviewProvider {
    static var previews: some View {
        ConicGradient_Angle()
    }
}

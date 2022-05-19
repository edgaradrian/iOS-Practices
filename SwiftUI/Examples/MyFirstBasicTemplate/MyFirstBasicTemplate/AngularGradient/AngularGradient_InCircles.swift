//
//  AngularGradient_InCircles.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 19/05/22.
//

import SwiftUI

struct AngularGradient_InCircles: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Degradado angular", subtitulo: "Con círculos", description: "Se pueden llenar círculos con degradados")
            
            HStack {
                Circle()
                    .fill(angularGradient)
                Ellipse()
                    .fill(angularGradient)
                Capsule()
                    .fill(angularGradient)
            }
            .padding(.horizontal)
            
            DescView(description: "Pueden aplicarse degradados a trazos (Strokes)", backColor: .blue)
            
            HStack {
                Circle()
                    .stroke(angularGradient, lineWidth: 10)
                Ellipse()
                    .strokeBorder(angularGradient, lineWidth: 10)
                Capsule()
                    .trim(from: 0.13, to: 1)
                    .stroke(angularGradient, style: StrokeStyle(lineWidth: 10, lineCap: CGLineCap.round))
            }
            .padding(.horizontal)
            
        }
    }
}

struct AngularGradient_InCircles_Previews: PreviewProvider {
    static var previews: some View {
        AngularGradient_InCircles()
    }
}

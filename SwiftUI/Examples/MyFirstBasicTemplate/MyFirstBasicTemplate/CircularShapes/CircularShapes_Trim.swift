//
//  CircularShapes_Trim.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 18/04/22.
//

import SwiftUI

struct CircularShapes_Trim: View {
    @State private var circleProgress: CGFloat = 1.0
    private var circlePercentage: Int {
        Int(circleProgress * 100.0)
    }
    
    var body: some View {
        VStack(spacing: 40) {
            
            HeaderView(titulo: "Formas Circulares", subtitulo: "Función de Recortar", description: "Recortar la forma para sólo mostrar un procentaje de ella")
            
            Circle()
                .trim(from: 0, to: circleProgress)
                .stroke(Color.blue, style: StrokeStyle(lineWidth: 40, lineCap: CGLineCap.round))
                .frame(height: 300)
                .rotationEffect(.degrees(-90))
                .overlay(
                    Text("\(circlePercentage)%")
                        .font(.largeTitle)
                        .foregroundColor(.gray)
                )
                .padding(40)
            
            VStack {
                Text("Progreso")
                HStack {
                    Text("0%")
                    Slider(value: $circleProgress)
                    Text("100%")
                }
            }
            .padding()
        }
    }
}

struct CircularShapes_Trim_Previews: PreviewProvider {
    static var previews: some View {
        CircularShapes_Trim()
    }
}

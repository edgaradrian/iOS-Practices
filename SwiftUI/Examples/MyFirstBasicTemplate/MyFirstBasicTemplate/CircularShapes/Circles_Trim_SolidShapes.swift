//
//  Circles_Trim_SolidShapes.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 18/04/22.
//

import SwiftUI

struct Circles_Trim_SolidShapes: View {
    @State private var circleProgress: CGFloat = 1.0
    private var circlePercentage: Int {
        Int(circleProgress * 100.0)
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 40) {
                
                HeaderView(titulo: "Formas Circulares", subtitulo: "Recortar Figuras Solidas", description: "Recortar figuras solidas para mostrar sólo el porcentaje de ella")
                
                Circle()
                    .trim(from: 0, to: circleProgress)
                    .fill(Color.blue)
                    .frame(height: 300)
                    .rotationEffect(.degrees(-90))
                    .overlay(
                        Text("\(circlePercentage)%")
                            .font(.largeTitle)
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
}

struct Circles_Trim_SolidShapes_Previews: PreviewProvider {
    static var previews: some View {
        Circles_Trim_SolidShapes()
    }
}

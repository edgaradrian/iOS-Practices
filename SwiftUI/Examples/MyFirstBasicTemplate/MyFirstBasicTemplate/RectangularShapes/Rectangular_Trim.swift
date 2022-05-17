//
//  Rectangular_Trim.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 17/05/22.
//

import SwiftUI

struct Rectangular_Trim: View {
    @State private var circleProgress: CGFloat = 0.5
    private var circlePercentage: Int { Int(circleProgress * 100.0) }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                HeaderView(titulo: "Formas Rectangulares", subtitulo: "Función de recortar", description: "Recortar la figura para sólo mostrar una parte de ella")
                
                Rectangle()
                    .trim(from: 0, to: circleProgress)
                    .stroke(Color.blue, style: StrokeStyle(lineWidth: 40, lineCap: CGLineCap.round))
                    .frame(height: 300)
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
            .font(.title)
        }
    }
}

struct Rectangular_Trim_Previews: PreviewProvider {
    static var previews: some View {
        Rectangular_Trim()
    }
}

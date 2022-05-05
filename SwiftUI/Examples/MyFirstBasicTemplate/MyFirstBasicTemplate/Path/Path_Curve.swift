//
//  Path_Curve.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 05/05/22.
//

import SwiftUI

struct Path_Curve: View {
    let linear = LinearGradient(gradient: Gradient(colors: [.yellow, .green]), startPoint: .topTrailing, endPoint: .bottomLeading)
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Path", subtitulo: "Curva", description: "Usando .addCurve se puede crear una línea curva. Se define el final de la línea y se definen los puntos de control de la línea.")
            
            ZStack {
                
                CurvedShape()
                    .fill(linear)
                    
                CurvedShape()
                    .stroke(.cyan, style: StrokeStyle(lineWidth: 8, lineCap: .round, dash: [60, 35]))
                    .rotationEffect(.degrees(10))
                
            }
            .padding(40)
        }
        .font(.title)
    }
}

struct Path_Curve_Previews: PreviewProvider {
    static var previews: some View {
        Path_Curve()
    }
}

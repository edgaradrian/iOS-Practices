//
//  LinearGradient_OnShapesControls.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 24/05/22.
//

import SwiftUI

struct LinearGradient_OnShapesControls: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                
                HeaderView(titulo: "LinearGradient", subtitulo: "En formas y controles", description: "Se pueden aplicar degradados a formas y controles usando los modificadores de fill o background")
                    .layoutPriority(1)
                
                Capsule()
                    .fill(linearGradient)
                    .frame(height: 100)
                    .padding()
                
                Button(action: {}) {
                    Text("Botón")
                        .foregroundColor(.white)
                        .padding()
                }
                .background(linearGradient)
                .cornerRadius(15)
                
                Text("Se puede usar strokeBorder para aplicar un degradado a los bordes de las figuras.")
                    .padding(.horizontal)
                
                Circle()
                    .strokeBorder(linearGradient, lineWidth: 20)
                    .frame(height: 200)
                
            }
        }
    }
}

struct LinearGradient_OnShapesControls_Previews: PreviewProvider {
    static var previews: some View {
        LinearGradient_OnShapesControls()
    }
}

let linearGradient = LinearGradient(colors: gradientColors, startPoint: .top, endPoint: .bottom)

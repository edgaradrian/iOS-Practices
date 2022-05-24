//
//  LinearGradient_ColorLocation.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 24/05/22.
//

import SwiftUI

struct LinearGradient_ColorLocation: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Linear Gradient", subtitulo: "Ubicación de color", description: "Se puede personalizar donde se detenga el degradado.")
            
            HStack {
                VStack {
                    Text("0")
                    Spacer()
                    Text("0.75")
                        .padding(.bottom, 50)
                    Text("1")
                }
                Rectangle()
                    .fill(newLinearGradient)
            }
            .frame(height: 300)
            .padding()
        }
    }
}

struct LinearGradient_ColorLocation_Previews: PreviewProvider {
    static var previews: some View {
        LinearGradient_ColorLocation()
    }
}

let newGradientColors = Gradient(stops: [.init(color: .blue, location: 0),
                                         .init(color: .yellow, location: 0.75),
                                         .init(color: .orange, location: 1)])

let newLinearGradient = LinearGradient(gradient: newGradientColors, startPoint: .top, endPoint: .bottom)

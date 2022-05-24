//
//  LinearGradient_CustomDirection.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 24/05/22.
//

import SwiftUI

struct LinearGradient_CustomDirection: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "LinearGradient", subtitulo: "Dirección Personalizada", description: "Se pueden colocar diferentes puntos utilizando los puntos cardinales X y Y.")
            
            HStack(spacing: 20) {
                
                Rectangle()
                    .fill(LinearGradient(colors: gradientColors,
                                         startPoint: UnitPoint(x: 0, y: 0.25),
                                         endPoint: UnitPoint(x: 1, y: 0.75)))
                    .frame(width: 100, height: 100)
                
                Rectangle()
                    .fill(LinearGradient(colors: gradientColors,
                                         startPoint: UnitPoint(x: 0.65, y: 0.65),
                                         endPoint: UnitPoint(x: 0.8, y: 0.75)))
                    .frame(width: 100, height: 100)
                
                Rectangle()
                    .fill(LinearGradient(colors: gradientColors,
                                         startPoint: UnitPoint(x: 0.9, y: 0.8),
                                         endPoint: UnitPoint(x: 0.25, y: 0.15)))
                    .frame(width: 100, height: 100)
            }
        }
    }
}

struct LinearGradient_CustomDirection_Previews: PreviewProvider {
    static var previews: some View {
        LinearGradient_CustomDirection()
    }
}

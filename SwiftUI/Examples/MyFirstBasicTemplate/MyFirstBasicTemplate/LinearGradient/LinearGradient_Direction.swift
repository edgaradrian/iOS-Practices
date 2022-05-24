//
//  LinearGradient_Direction.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 24/05/22.
//

import SwiftUI

struct LinearGradient_Direction: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "LinearGradient", subtitulo: "Dirección de degradado", description: "La dirección de degradado es a través de los parámetros de startPoint y endPoint")
            
            HStack(spacing: 20) {
                Rectangle()
                    .fill(LinearGradient(colors: gradientColors,
                                         startPoint: .leading,
                                         endPoint: .bottom))
                    .frame(width: 100, height: 100)
                
                Rectangle()
                    .fill(LinearGradient(colors: gradientColors,
                                         startPoint: .bottomLeading,
                                         endPoint: .topTrailing))
                    .frame(width: 100, height: 100)
                
                Rectangle()
                    .fill(LinearGradient(colors: gradientColors,
                                         startPoint: .bottomTrailing,
                                         endPoint: .leading))
                    .frame(width: 100, height: 100)
                
            }
            
        }
    }
}

struct LinearGradient_Direction_Previews: PreviewProvider {
    static var previews: some View {
        LinearGradient_Direction()
    }
}

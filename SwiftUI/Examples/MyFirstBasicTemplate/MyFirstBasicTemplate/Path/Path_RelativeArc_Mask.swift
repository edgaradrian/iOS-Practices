//
//  Path_RelativeArc_Mask.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 15/05/22.
//

import SwiftUI

struct Path_RelativeArc_Mask: View {
    
    let angularGradient = AngularGradient(colors: [.blue, .cyan, .green, .orange, .yellow],
                                          center: .bottom,
                                          startAngle: .degrees(-180),
                                          endAngle: .degrees(0))
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Path", subtitulo: "Path con máscara", description: "Se pueden combinar las formas con máscaras para crear controles propios.")
            
            HalfCircleProgress(progress: 0.45)
                .fill(angularGradient)
                .frame(height: 200)
                .background(Color(uiColor: .systemGray3))
            
        }
    }
}

struct Path_RelativeArc_Mask_Previews: PreviewProvider {
    static var previews: some View {
        Path_RelativeArc_Mask()
    }
}

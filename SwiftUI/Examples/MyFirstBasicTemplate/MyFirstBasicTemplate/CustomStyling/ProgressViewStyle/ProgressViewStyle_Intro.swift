//
//  ProgressViewStyle_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 20/07/22.
//

import SwiftUI

struct ProgressViewStyle_Intro: View {
    
    @State private var progressAmount: CGFloat = 0.5
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Estilo de Vista de Progreso", subtitulo: "Personalización", description: "Se puede crear su propio estilo de vista de progreso")
            
            ProgressView("ADK", value: progressAmount)
                .progressViewStyle(MeasureProgressViewStyle())
                .frame(width: 300, height: 300)
            
            Slider(value: $progressAmount, minimumValueLabel: Text("0"), maximumValueLabel: Text("1"), label: {})
                .padding()
        }
        .font(.title)
    }
}

struct ProgressViewStyle_Intro_Previews: PreviewProvider {
    static var previews: some View {
        ProgressViewStyle_Intro()
    }
}

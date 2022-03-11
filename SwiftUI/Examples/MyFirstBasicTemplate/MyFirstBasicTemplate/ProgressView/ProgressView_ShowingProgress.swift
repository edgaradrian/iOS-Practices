//
//  ProgressView_ShowingProgress.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 10/03/22.
//

import SwiftUI

struct ProgressView_ShowingProgress: View {
    @State private var progress = 0.75
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "ProgressView", subtitulo: "Mostrando el progreso", description: "Se mostrar el progreso en el ProgressView")
            
            ProgressView(value: progress)
                .padding()
            
            DescView(description: "Con etiqueta", backColor: .cyan)
            
            ProgressView("Progress (\(Int(progress * 100))%)", value: progress)
                .padding()
            
        }
        .font(.title)
    }
}

struct ProgressView_ShowingProgress_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView_ShowingProgress()
    }
}

//
//  ProgressView_Total.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 10/03/22.
//

import SwiftUI

struct ProgressView_Total: View {
    @State private var total = 0.5
    @State private var progress = 0.4
    
    var body: some View {
        VStack(spacing: 40) {
            HeaderView(titulo: "ProgressView", subtitulo: "Ajustando el total", description: "Por defecto, el rango del ProgressView es de 0 a 1. Puedes cmabiar el rango poniendo la cantidad deseada en total")
            
            ProgressView("Descarga de archivos: \(Int(progress/total * 100))%", value: progress, total: total)
                .padding()
            
        }
        .font(.title)
    }
}

struct ProgressView_Total_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView_Total()
    }
}

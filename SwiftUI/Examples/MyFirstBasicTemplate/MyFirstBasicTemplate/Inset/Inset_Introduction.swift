//
//  Inset_Introduction.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 17/05/22.
//

import SwiftUI

struct Inset_Introduction: View {
    @State private var insetAmount: CGFloat = 45
    
    var body: some View {
        VStack(spacing: 10) {
            HeaderView(titulo: "Recuadro", subtitulo: "Introducción", description: "Los recuadros sólo se aplican en figuras. Esto permite agregar relleno al borde del marco y a la figura en sí.")
            
            Text("Recuadro a 20")
            Circle()
                .inset(by: 20)
                .fill(Color.blue)
                .frame(width: 200)
                .border(Color.blue)
            
            Text("Desliza para ajustar el recuadro")
            Rectangle()
                .inset(by: insetAmount)
                .fill(Color.blue)
                .frame(width: 300, height: 200)
                .border(Color.blue)
       
            HStack {
                Text("0")
                Slider(value: $insetAmount, in: 0...95)
                Text("95")
            }
            .padding()
            
        }
        .font(.title)
    }
}

struct Inset_Introduction_Previews: PreviewProvider {
    static var previews: some View {
        Inset_Introduction()
    }
}

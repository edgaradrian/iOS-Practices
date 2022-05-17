//
//  Inset_NegativeValues.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 17/05/22.
//

import SwiftUI

struct Inset_NegativeValues: View {
    @State private var insetAmount: CGFloat = 10
    
    var body: some View {
        VStack(spacing: 10) {
            HeaderView(titulo: "Recuadro", subtitulo: "Valores Negativos", description: "Se puede hacer que la figura se extienda más allá de su marco.")
            
            Text("Recuadro a -20")
            Circle()
                .inset(by: -20)
                .fill(Color.blue)
                .frame(width: 100)
                .border(Color.blue)
            
            Text("Desliza para ajustar el recuadro")
            Rectangle()
                .inset(by: insetAmount)
                .fill(Color.blue)
                .frame(width: 200, height: 200)
                .border(Color.blue)
                .padding(30)
       
            HStack {
                Text("-100")
                Slider(value: $insetAmount, in: -100...20)
                Text("20")
            }
            .padding()
            
        }
        .font(.title)
    }
}

struct Inset_NegativeValues_Previews: PreviewProvider {
    static var previews: some View {
        Inset_NegativeValues()
    }
}

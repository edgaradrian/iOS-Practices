//
//  DragGesture_OnChanged.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 25/07/22.
//

import SwiftUI

struct DragGesture_OnChanged: View {
    
    @State private var circlePosition = CGPoint(x: 50, y: 50)
    @State private var circleLabel = "50,50"
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Gesto de Arrastre", subtitulo: "Al cambiar", description: "Adjuntar un modificador de arrastre a la vista para permitir al usuario el arrastre.")
            
            Text("Arrastra el círculo")
            
            Circle()
                .fill(Color.blue)
                .frame(width: 100, height: 100, alignment: .center)
                .opacity(0.8)
                .overlay(
                    Text(circleLabel)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                )
                .position(circlePosition)
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            self.circlePosition = value.location
                            self.circleLabel = "\(Int(value.location.x)), \(Int(value.location.y))"
                        })
                )
                .border(Color.blue)
            
        }
        .font(.title)
    }
}

struct DragGesture_OnChanged_Previews: PreviewProvider {
    static var previews: some View {
        DragGesture_OnChanged()
    }
}

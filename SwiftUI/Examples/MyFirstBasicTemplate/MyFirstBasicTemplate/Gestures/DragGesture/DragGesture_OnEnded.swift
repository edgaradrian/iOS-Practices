//
//  DragGesture_OnEnded.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 26/07/22.
//

import SwiftUI

struct DragGesture_OnEnded: View {
    @State private var circlePosition = CGPoint(x: 50, y: 50)
    @State private var circleLabel = "50,50"
    @State private var isOK = true
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Gestos", subtitulo: "Al terminar el arrastre", description: "Se puede usar la llamada de vuelta para ejecutar las misma acciones.")
            
            Text("Arrastra el círculo")
            Circle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
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
                        .onEnded({ value in
                            self.isOK = value.location.x < 200 ? true : false
                        })
                )
                .background(isOK ? Color.clear : Color.red)
            
        }
        .font(.title)
    }
}

struct DragGesture_OnEnded_Previews: PreviewProvider {
    static var previews: some View {
        DragGesture_OnEnded()
    }
}

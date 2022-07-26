//
//  DragGesture_Updating.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 26/07/22.
//

import SwiftUI

struct DragGesture_Updating: View {
    
    @State private var circlePosition = CGPoint(x: 50, y: 50)
    @State private var circleLabel = "50,50"
    @GestureState private var isDragging = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HeaderView(titulo: "Gestos", subtitulo: "Arrastrar - Actualizado", description: "Se puede usar la llamada de retorno al actualizar para dar el mismo funcionamiento de onChanged")
                
                Text("Arrastra el círculo")
                Text("Se arrastra: \(isDragging.description)")
                
                Circle()
                    .fill(isDragging ? .red : .blue)
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
                            .updating($isDragging, body: { value, state, transaction in
                                state = true
                            })
                    )
                
                DescView(description: "Cuando se actualiza, se utiliza GestureState como parámetro. GestureState reestablece cualquier valor dado cuando el arrastre termina,", backColor: .blue)
                
                
            }
            .font(.title)
        }
    }
}

struct DragGesture_Updating_Previews: PreviewProvider {
    static var previews: some View {
        DragGesture_Updating()
    }
}

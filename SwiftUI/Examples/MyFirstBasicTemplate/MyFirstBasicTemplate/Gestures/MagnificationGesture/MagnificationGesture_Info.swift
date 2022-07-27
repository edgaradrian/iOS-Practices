//
//  MagnificationGesture_Info.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 27/07/22.
//

import SwiftUI

struct MagnificationGesture_Info: View {
    @GestureState private var scale: CGFloat = 1.0
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Gestos", subtitulo: "Gesto de aumento", description: "Se puede conectar el efecto de escala a la propiedad de magnitud de aumento para acercar o alejar una vista.")
            
            Text("Acercamiento")
            
            Spacer()
            
            Image("packers")
                .scaleEffect(scale)
                .gesture(
                    MagnificationGesture()
                        .updating($scale, body: { value, state, transaction in
                            state = value.magnitude
                        })
                )
            
            Spacer()
            Text("Aumento")
        }
        .font(.title)
    }
}

struct MagnificationGesture_Info_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationGesture_Info()
    }
}

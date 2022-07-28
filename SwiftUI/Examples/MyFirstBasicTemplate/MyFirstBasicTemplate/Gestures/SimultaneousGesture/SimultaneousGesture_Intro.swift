//
//  SimultaneousGesture_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 28/07/22.
//

import SwiftUI

struct SimultaneousGesture_Intro: View {
    
    @State private var degrees = 0.0
    @State var scale: CGFloat = 1.0
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HeaderView(titulo: "Gestos", subtitulo: "Gestos combinados", description: "Para combinar gestos, usar la función simultanea en gestos")
                
                Text("Acercamiento y Rotación")
                
                Image("packers")
                    .scaleEffect(scale)
                    .rotationEffect(.degrees(degrees))
                    .gesture(
                        MagnificationGesture().simultaneously(with: RotationGesture())
                            .onChanged({ value in
                                self.scale = value.first ?? 1.0
                                self.degrees = value.second?.degrees ?? 0.0
                            })
                    )
                
                Text("Rotación: \(degrees)")
                Text("Magnificación: \(scale)")
                
            }
            .font(.title)
        }
    }
}

struct SimultaneousGesture_Intro_Previews: PreviewProvider {
    static var previews: some View {
        SimultaneousGesture_Intro()
    }
}

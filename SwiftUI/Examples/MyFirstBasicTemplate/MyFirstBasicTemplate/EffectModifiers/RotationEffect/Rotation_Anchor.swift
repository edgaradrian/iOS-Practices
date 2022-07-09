//
//  Rotation_Anchor.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 08/07/22.
//

import SwiftUI

struct Rotation_Anchor: View {
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HeaderView(titulo: "Efecto de Rotación", subtitulo: "Anclas", description: "El ancla es el punto en donde la rotación gira. Por defecto es el centro")
                
                Text("Se muestran los marcos")
                
                VStack(spacing: 60) {
                    Text(".topLeading")
                        .rotationEffect(Angle(degrees: -45), anchor: .topLeading)
                        .border(Color.red)
                    
                    Text(".center")
                        .rotationEffect(Angle(degrees: -45), anchor: .center)
                        .border(Color.red)
                    
                    Text(".bottomTrailing")
                        .rotationEffect(Angle(degrees: -45), anchor: .bottomTrailing)
                        .border(Color.red)
                    
                }
                .font(.largeTitle)
                
                Spacer()
            }
        }
    }
}

struct Rotation_Anchor_Previews: PreviewProvider {
    static var previews: some View {
        Rotation_Anchor()
    }
}

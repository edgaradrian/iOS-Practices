//
//  DrawingGroup_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 02/07/22.
//

import SwiftUI

struct DrawingGroup_Intro: View {
    
    @State private var scaling = false
    
    var body: some View {
        VStack(spacing: 10) {
            HeaderView(titulo: "Grupo de Dibujo", subtitulo: "Introducción", description: "Usar el modificador drawingGroup mejora el rendimiento cuando trabajas muchas capasen un Zstack")
            
            Button {
                self.scaling = true
            } label: {
                Text("Cambiar Escala")
            }

            GeometryReader { g in
                
                ZStack {
                    ForEach(0...200, id: \.self) { _ in
                        Circle()
                            .foregroundColor(.blue)
                            .opacity(0.2)
                            .animation(.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                                .repeatForever()
                                .speed(.random(in: 0.05...0.9))
                                .delay(.random(in: 0...2))
                            )
                            .scaleEffect(self.scaling ? .random(in: 0.1...2) : 1)
                            .frame(width: .random(in: 10...100),
                                   height: .random(in: 10...100))
                            .position(x: randomCoordinate(max: g.size.width), y: randomCoordinate(max: g.size.height))
                    }
                }
                .drawingGroup()
            }
            
            
        }
    }//body
    
    func randomCoordinate(max: CGFloat) -> CGFloat {
        return CGFloat.random(in: 0...max)
    }//randomCoordinate
    
}//DrawingGroup_Intro

struct DrawingGroup_Intro_Previews: PreviewProvider {
    static var previews: some View {
        DrawingGroup_Intro()
    }
}

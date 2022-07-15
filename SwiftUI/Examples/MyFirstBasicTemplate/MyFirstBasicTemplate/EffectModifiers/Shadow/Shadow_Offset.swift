//
//  Shadow_Offset.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 15/07/22.
//

import SwiftUI

struct Shadow_Offset: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                
                HeaderView(titulo: "Sombra", subtitulo: "Compensado", description: "Usar los parámetros X y Y para cambiar la ubicación de la sombra.")
                
                
                Group {
                    
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 120, height: 120, alignment: .center)
                        .shadow(color: .orange, radius: 1, x: 10, y: -10)
                        .overlay(
                            Text("x: 10 \ny: -10")
                        )
                    
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 120, height: 120, alignment: .center)
                        .shadow(color: .orange, radius: 1, x: 10, y: 10)
                        .overlay(
                            Text("x: 10 \ny: 10")
                        )
                    
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 120, height: 120, alignment: .center)
                        .shadow(color: .orange, radius: 1, x: -10, y: 10)
                        .overlay(
                            Text("x: -10 \ny: 10")
                        )
                    
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 120, height: 120, alignment: .center)
                        .shadow(color: .orange, radius: 1, x: -10, y: -10)
                        .overlay(
                            Text("x: -10 \ny: -10")
                        )
                    
                    
                    
                }
                .font(.title)
                .foregroundColor(.white)
                
                
            }
        }
    }
}

struct Shadow_Offset_Previews: PreviewProvider {
    static var previews: some View {
        Shadow_Offset()
    }
}

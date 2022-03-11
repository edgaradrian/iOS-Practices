//
//  ScrollView_Horizontal.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 10/03/22.
//

import SwiftUI

struct ScrollView_Horizontal: View {
    var colours = [Color.cyan, Color.yellow, Color.orange, Color.green, Color.gray, Color.blue, Color.pink]
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 20) {
                HeaderView(titulo: "ScrollView", subtitulo: "Desplazamiento Horizontal", description: "Con colocar el eje del ScrollView de forma horizontal, se quedará habilitado.")
                
                ScrollView(.horizontal, showsIndicators: true) {
                    HStack {
                        ForEach(colours, id: \.self) { color in
                            RoundedRectangle(cornerRadius: 15)
                                .fill(color)
                                .frame(width: geometry.size.width - 60, height: 200)
                        }
                    }
                }
                .padding(.horizontal)
                Spacer()
            }
        }
    }
}

struct ScrollView_Horizontal_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView_Horizontal()
    }
}

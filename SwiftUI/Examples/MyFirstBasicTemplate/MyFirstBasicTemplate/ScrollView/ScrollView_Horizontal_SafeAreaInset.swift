//
//  ScrollView_Horizontal_SafeAreaInset.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 10/03/22.
//

import SwiftUI

struct ScrollView_Horizontal_SafeAreaInset: View {
    
    var colours = [Color.cyan, Color.yellow, Color.orange, Color.green, Color.gray, Color.blue, Color.pink]
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 40) {
                HeaderView(titulo: "ScrollView", subtitulo: "SafeAreaInset", description: "Se puede agregar el safeAreaInset a un ScrollView para mostrar vistas adicionales.")
                
                ScrollView(.horizontal, showsIndicators: true) {
                    HStack {
                        ForEach(colours, id: \.self) { color in
                            RoundedRectangle(cornerRadius: 15)
                                .fill(color)
                                .frame(width: geometry.size.width - 60)
                        }
                    }
                }.padding(.trailing)
                    .safeAreaInset(edge: .leading) {
                        VStack(spacing: 10) {
                            Text("Scroll")
                                .font(.body)
                            Image(systemName: "arrow.left.circle")
                        }
                        .frame(maxHeight: .infinity)
                        .padding(.horizontal)
                        .background(.regularMaterial)
                    }
                    .frame(height: 200)
                Spacer()
                
            }
            .font(.title)
        }
    }
}

struct ScrollView_Horizontal_SafeAreaInset_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView_Horizontal_SafeAreaInset()
    }
}

//
//  ZIndex_Order.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 24/06/22.
//

import SwiftUI

struct ZIndex_Order: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HeaderView(titulo: "Indice Z", subtitulo: "Ordenar con ZIndex", description: "Con el ordenamiento de ZIndex, pueden posicionarse las vistas como se desee")
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.mint)
                    .frame(height: 150)
                    .padding(.horizontal, 50)
                    .overlay(
                        Text("Uno")
                    )
                    .zIndex(1)
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.brown)
                    .frame(height: 150)
                    .padding(.horizontal, 50)
                    .scaleEffect(1.5)
                    .overlay(Text("Dos"))
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.orange)
                    .frame(height: 150)
                    .padding(.horizontal, 50)
                    .overlay(Text("Tres"))
                
            }
            .font(.title)
        }
    }
}

struct ZIndex_Order_Previews: PreviewProvider {
    static var previews: some View {
        ZIndex_Order()
    }
}

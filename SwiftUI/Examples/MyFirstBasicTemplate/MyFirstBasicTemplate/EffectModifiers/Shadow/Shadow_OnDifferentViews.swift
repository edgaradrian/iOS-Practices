//
//  Shadow_OnDifferentViews.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 14/07/22.
//

import SwiftUI

struct Shadow_OnDifferentViews: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HeaderView(titulo: "Sombras", subtitulo: "En diferentes vistas", description: "Las vistas se forman alrededor de las partes solidas de una vista")
                
                Group {
                    
                    Text("Packers")
                        .font(.system(size: 50))
                        .foregroundColor(.green)
                    
                    Circle()
                        .fill(Color.yellow)
                        .frame(width: 150, height: 150, alignment: .center)
                        .overlay(
                            Text("Packers")
                                .foregroundColor(.green)
                        )
                    
                    Image("packers")
                        .resizable()
                        .frame(width: 200, height: 200)
                    
                    
                }
                .shadow(color: .green, radius: 10)
                .font(.title)
                
            }
        }
    }
}

struct Shadow_OnDifferentViews_Previews: PreviewProvider {
    static var previews: some View {
        Shadow_OnDifferentViews()
    }
}

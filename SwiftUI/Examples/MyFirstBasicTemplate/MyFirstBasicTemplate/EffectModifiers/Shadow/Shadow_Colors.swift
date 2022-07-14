//
//  Shadow_Colors.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 14/07/22.
//

import SwiftUI

struct Shadow_Colors: View {
    var body: some View {
        ScrollView {
            
            VStack(spacing: 10) {
                
                HeaderView(titulo: "Sombra", subtitulo: "Colores", description: "Se puede elegir cualquier color para la sombra. Por defecto tiene negro com opacidad .33")
             
                Group {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.blue)
                        .frame(width: 300, height: 75)
                        .shadow(color: .red, radius: 10)
                        .overlay(
                            Text("Color: Rojo")
                        )
                    
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.blue)
                        .frame(width: 300, height: 75)
                        .shadow(color: .green, radius: 10)
                        .overlay(
                            Text("Color: Verde")
                        )
                    
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.blue)
                        .frame(width: 300, height: 75)
                        .shadow(color: .gray, radius: 10)
                        .overlay(
                            Text("Color: Gris")
                        )
                    
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.blue)
                        .frame(width: 300, height: 75)
                        .shadow(color: .black, radius: 10)
                        .overlay(
                            Text("Color: Negro")
                        )
                    
                    
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.blue)
                        .frame(width: 300, height: 75)
                        .shadow(color: .primary, radius: 10)
                        .overlay(
                            Text("Color: Primario")
                        )
                    
                    
                }
                .font(.title)
                .foregroundColor(.white)
                
                
            }
            
        }
    }
}

struct Shadow_Colors_Previews: PreviewProvider {
    static var previews: some View {
        Shadow_Colors()
    }
}

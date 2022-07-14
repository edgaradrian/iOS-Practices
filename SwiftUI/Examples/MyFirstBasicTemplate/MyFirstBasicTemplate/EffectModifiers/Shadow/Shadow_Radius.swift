//
//  Shadow_Radius.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 14/07/22.
//

import SwiftUI

struct Shadow_Radius: View {
    var body: some View {
        ScrollView {
            
            VStack {
                HeaderView(titulo: "Sombra", subtitulo: "Radio", description: "Usar sombra para poner en las vistas. El radio indica cuánto se esparcirá la sombra.")
                
                Group {
                    Color.blue
                        .frame(width: 300, height: 75)
                        .shadow(radius: 1)
                        .overlay(
                            Text("Radio igual a 1")
                        )
                    
                    Color.blue
                        .frame(width: 300, height: 75)
                        .shadow(radius: 6)
                        .overlay(
                            Text("Radio igual a 6")
                        )
                    
                    Color.blue
                        .frame(width: 300, height: 75)
                        .shadow(radius: 30)
                        .overlay(
                            Text("Radio igual a 30")
                        )
                    
                    Color.blue
                        .frame(width: 300, height: 75)
                        .shadow(radius: 50)
                        .overlay(
                            Text("Radio igual a 50")
                        )
                    
                }
                .font(.title)
                .foregroundColor(.white)
                
                DescView(description: "Notar que cada vez que es más grande el radio, se nota más sombra", backColor: .blue)
                
            }
            
            
        }
    }
}

struct Shadow_Radius_Previews: PreviewProvider {
    static var previews: some View {
        Shadow_Radius()
    }
}

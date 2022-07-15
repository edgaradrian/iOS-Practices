//
//  Shadow_OrderMatters.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 15/07/22.
//

import SwiftUI

struct Shadow_OrderMatters: View {
    var body: some View {
        ScrollView {
            
            VStack(spacing: 20) {
                
                HeaderView(titulo: "Sombra", subtitulo: "El orden importa", description: "Dependiendo el orden del modificador de sombra, es como nuestra vista se ve afectada.")
                    .foregroundColor(.black)
                
                Group {
                    
                    Capsule()
                        .frame(width: 200, height: 60, alignment: .center)
                        .foregroundColor(.blue)
                        .shadow(color: .orange, radius: 1, x: 5)
                        .overlay(
                            Text("En la forma")
                        )
                    
                    Capsule()
                        .frame(width: .infinity, height: 60, alignment: .center)
                        .foregroundColor(.blue)
                        .overlay(
                            Text("En la forma y en lo superpuesto")
                        )
                        .shadow(color: .orange, radius: 1, x: 5)
                    
                    Button(action: {}) {
                        Text("En el contorno")
                    }
                    .padding()
                    .foregroundColor(.black)
                    .background(
                        Capsule()
                            .stroke(Color.blue, lineWidth: 2)
                            .shadow(color: .orange, radius: 1, x: 5)
                    )
                    
                    Button(action: {}) {
                        Text("En el texto")
                            .shadow(color: .orange, radius: 1, x: 5)
                    }
                    .padding()
                    .foregroundColor(.black)
                    .background(
                        Capsule()
                            .stroke(Color.blue, lineWidth: 2)
                    )
                    
                    Button(action: {}) {
                        Text("En el texto y el contorno")
                    }
                    .padding()
                    .foregroundColor(.black)
                    .background(
                        Capsule()
                            .stroke(Color.blue, lineWidth: 2)
                    )
                    .shadow(color: .orange, radius: 1, x: 5)
                    
                }
                
                
            }
            .font(.title)
            .foregroundColor(.white)
            
        }
    }
}

struct Shadow_OrderMatters_Previews: PreviewProvider {
    static var previews: some View {
        Shadow_OrderMatters()
    }
}

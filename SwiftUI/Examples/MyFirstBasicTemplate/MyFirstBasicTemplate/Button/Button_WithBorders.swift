//
//  Button_WithBorders.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 24/02/22.
//

import SwiftUI

struct Button_WithBorders: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Button")
                .font(.largeTitle)
            
            Text("With Borders")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("Aplicando borders pueden hacer efectos en tus botones. Aquí algunas opciones.")
                .padding()
                .frame(maxWidth: .infinity)
                .background(.blue)
                .foregroundColor(.white)
                .font(.title)
            
            Button(action: {}) {
                Text("Square Border Button")
                    .padding()
                    .border(.blue)
            }
            
            Button(action: {}) {
                Text("Rounded Border Button")
                    .padding()
                    .border(.blue)
                    .cornerRadius(10)
            }
            
            Text("Se intentó poner un corner radious al borde.")
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .font(.title)
                .padding()
                .background(Color.blue)
            
            Button(action: {}) {
                Text("Border Button")
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.blue, lineWidth: 2)
                    )
            }
            
        }
        .font(.title)
    }
}

struct Button_WithBorders_Previews: PreviewProvider {
    static var previews: some View {
        Button_WithBorders()
    }
}

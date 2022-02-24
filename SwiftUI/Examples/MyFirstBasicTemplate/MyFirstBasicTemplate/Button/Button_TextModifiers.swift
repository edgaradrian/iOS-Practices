//
//  Button_TextModifiers.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 23/02/22.
//

import SwiftUI

struct Button_TextModifiers: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Button")
                .font(.largeTitle)
            
            Text("Text Composition")
                .foregroundColor(.gray)

            Text("Agregar más que un texto a un botón. Por omisión, las vistas son compuestas en un HStack")
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .font(.title)
                .background(
                    Color.blue
                )
            
            Button(action: {}) {
                Text("Forgot Password?")
                Text("Tap to Recover")
                    .foregroundColor(.orange)
            }
            
            Text("Using a VStack")
                .frame(maxWidth: .infinity)
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(
                    Color.blue
                )
            
            Button(action: {}) {
                VStack {
                    Text("New User")
                    Text("(Register HEre)")
                        .font(.body)
                }
            }
            
        }
        .font(.title)
    }
}

struct Button_TextModifiers_Previews: PreviewProvider {
    static var previews: some View {
        Button_TextModifiers()
    }
}

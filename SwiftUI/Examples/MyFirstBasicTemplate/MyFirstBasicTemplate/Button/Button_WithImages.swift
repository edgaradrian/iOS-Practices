//
//  Button_WithImages.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 24/02/22.
//

import SwiftUI

struct Button_WithImages: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Button")
                .font(.largeTitle)
            
            Text("Con Imágenes")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("Botones trabajan bien con SF Symbols. Pero si necesitaramos una foto. ¿qué sucede?")
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .font(.title)
                .padding()
                .background(
                    Color.blue
                )
            
            Button(action: {}) {
                Image("packers")
                    .cornerRadius(40)
            }
            
            Text("Esto es porque el modo de renderizado de la imagen es template por defecto. ")
                .padding()
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .font(.title)
            
            Button(action: {}) {
                Image("packers")
                    .renderingMode(.original)
                    .cornerRadius(40)
            }
            
        }
    }
}

struct Button_WithImages_Previews: PreviewProvider {
    static var previews: some View {
        Button_WithImages()
    }
}

//
//  Link_Customization.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 26/02/22.
//

import SwiftUI

struct Link_Customization: View {
    var body: some View {
        VStack(spacing: 40) {
            HeaderView(titulo: "Link", subtitulo: "Personalizaciones", description: "Como un botón, hay un inicializador  que se puede usar para personalizar el vínculo")
            
            if let url = URL(string: "https://www.apple.com.mx") {
                
                Link(destination: url) {
                    HStack(spacing: 20) {
                        Image(systemName: "applelogo")
                        Text("Go to Apple")
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(
                        Capsule()
                            .fill(Color.cyan)
                            .shadow(radius: 8, y:18)
                    )
                }
                
            }
            
        }
    }
}

struct Link_Customization_Previews: PreviewProvider {
    static var previews: some View {
        Link_Customization()
    }
}

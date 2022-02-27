//
//  Link_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 26/02/22.
//

import SwiftUI

struct Link_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Link", subtitulo: "Introducción", description: "Usar un vínculopara abrir el navegador web por defecto")
            
            if let url = URL(string: "https://www.apple.com.mx") {
                
                Link("Ir a Apple", destination: url)
            
            }
            
            Spacer()
            
        }
        .font(.title)
    }
}

struct Link_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Link_Intro()
    }
}

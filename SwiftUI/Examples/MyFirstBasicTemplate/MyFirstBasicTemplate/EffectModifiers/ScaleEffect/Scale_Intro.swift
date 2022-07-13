//
//  Scale_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 13/07/22.
//

import SwiftUI

struct Scale_Intro: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HeaderView(titulo: "Efecto de Escala", subtitulo: "Introducción", description: "Escalar las vistas para hacerlas más grandes o más pequeñas.")
                
                Group {
                    Text("Antes")
                    Text("Escala")
                        .font(.title)
                    Text("Después (4X)")
                    Text("Escala (4X)")
                        .font(.title)
                        .scaleEffect(4)
                    
                    Divider()
                        .padding(.top)
                    Text("Antes")
                    Image(systemName: "cloud.sun.fill")
                    Text("Después (3.2X)")
                    Image(systemName: "cloud.sun.fill")
                        .scaleEffect(3.2)
                    
                }
                
            }
        }
    }
}

struct Scale_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Scale_Intro()
    }
}

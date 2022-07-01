//
//  CornerRadious_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 01/07/22.
//

import SwiftUI

struct CornerRadious_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Radio de Esquina", subtitulo: "Introducción", description: "Agregar esquinas redondeadas a cualquier vista con el modificador cornerRadious")
            
            Text("Radio de esquina en fíguras")
            Rectangle()
                .foregroundColor(.blue)
                .frame(width: 150, height: 50)
                .cornerRadius(12)
            
            Text("Radio de esquina en controles")
            Button(action: {}) {
                Text("Butón")
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(12)
            
            Text("Radio en imágenes")
            Image("packers")
                .resizable()
                .frame(width: 120, height: 120)
                .cornerRadius(12)
            
        }
    }
}

struct CornerRadious_Intro_Previews: PreviewProvider {
    static var previews: some View {
        CornerRadious_Intro()
    }
}

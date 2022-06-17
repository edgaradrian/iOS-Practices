//
//  Hidden_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 16/06/22.
//

import SwiftUI

struct Hidden_Intro: View {
    @State private var showShapes = false
    
    var body: some View {
        VStack(spacing: 10) {
            
            HeaderView(titulo: "Oculto", subtitulo: "Introducción", description: "Cuando el modificador hidden es utilizado, el contenido de la vista no se ve, pero el marco que ocupa la vista es respetado.")
            
            if showShapes {
                BlueRectangle()
                    .overlay(
                        Text("Mostrando fígura oculta")
                            .foregroundColor(.black)
                    )
            } else {
                BlueRectangle()
                    .hidden()
                    .overlay(
                        Text("Esta figura está oculta pero aún ocupa el espacio.")
                    )
            }
            
            BlueRectangle()
            BlueRectangle()
            
            Button {
                self.showShapes.toggle()
            } label: {
                Text("Mostrar/Ocultar vista")
            }

            
        }
    }
}

struct Hidden_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Hidden_Intro()
    }
}

struct BlueRectangle: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .foregroundColor(.blue)
    }
}

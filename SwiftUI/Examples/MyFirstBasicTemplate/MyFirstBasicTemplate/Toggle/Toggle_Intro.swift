//
//  Toggle_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 11/04/22.
//

import SwiftUI

struct Toggle_Intro: View {
    @State private var isToggleOn = true
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Toggle", subtitulo: "Introducción", description: "El toggle es una vista que empuja hacia afuera que sólo empuja para llenar la anchura de la vista padre.")
            
            Toggle("Modo nocturno", isOn: $isToggleOn)
                .padding()
                .accentColor(Color.cyan)
            
            DescView(description: "Combinar imágenes con texto", backColor: .blue)
            
            Toggle(isOn: $isToggleOn) {
                Text("Modo Nocturno")
                Image(systemName: "moon")
            }
            .padding()
            
            DescView(description: "O se puede no tener nada", backColor: .blue)
            
            VStack {
                Text("¿Activar la alarma?")
                    .foregroundColor(.white)
                Toggle("Poner alarma", isOn: $isToggleOn)
                    .labelsHidden()
            }
            .padding(25)
            .background(Color.blue)
            .cornerRadius(20)
            
        }
        .font(.title)
    }
}

struct Toggle_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Toggle_Intro()
    }
}

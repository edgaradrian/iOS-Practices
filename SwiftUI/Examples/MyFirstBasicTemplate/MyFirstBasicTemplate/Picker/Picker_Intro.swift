//
//  Picker_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 07/03/22.
//

import SwiftUI

struct Picker_Intro: View {
    @State private var favoriteState = 1
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Picker", subtitulo: "Introducción", description: "Puedes asociar una propiedad con los valores de etiqueta de las filas de un picker")
        
            Picker("Estados", selection: $favoriteState) {
                Text("Chiapas").tag(0)
                Text("Yucatán").tag(1)
                Text("Veracruz").tag(2)
            }
        
            Spacer()
            
        }
        .font(.title)
    }
}

struct Picker_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Picker_Intro()
    }
}

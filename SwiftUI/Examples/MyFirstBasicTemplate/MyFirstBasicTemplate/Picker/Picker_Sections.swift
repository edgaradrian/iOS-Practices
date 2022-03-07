//
//  Picker_Sections.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 07/03/22.
//

import SwiftUI

struct Picker_Sections: View {
    @State private var favoriteState = 1
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Picker", subtitulo: "Secciones", description: "Usa las secciones dentro de los valores del picker para organizarlas.")
            
            Picker("Estados", selection: $favoriteState) {
                
                Section {
                    Text("Baja California").tag(0)
                    Text("Baja California Sur").tag(1)
                } header: {
                    Text("Norte")
                }
                
                Section {
                    Text("Chiapas").tag(2)
                    Text("Yucatán").tag(3)
                } header: {
                    Text("Sur")
                }
                
                Spacer()
                
            }
            
        }
        .font(.title)
    }
}

struct Picker_Sections_Previews: PreviewProvider {
    static var previews: some View {
        Picker_Sections()
    }
}

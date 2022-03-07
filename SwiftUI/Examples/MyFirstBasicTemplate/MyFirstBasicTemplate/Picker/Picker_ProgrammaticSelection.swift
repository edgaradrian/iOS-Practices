//
//  Picker_ProgrammaticSelection.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 07/03/22.
//

import SwiftUI

struct Picker_ProgrammaticSelection: View {
    @State private var favoriteState = 1
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Picker", subtitulo: "Seleccion programática", description: "Se puede cambiar la selección, justo por cambiar la propiedad enlazada.")
            
            Picker("Estados", selection: $favoriteState) {
                Text("Distrito Federal").tag(0)
                Text("Estado de México").tag(1)
                Text("Puebla").tag(2)
                Text("Morelos").tag(3)
                Text("Tlaxcala").tag(4)
            }
            .pickerStyle(.wheel)
            .padding(.horizontal)
            
            Button("Selecciona Distrito Federal") {
                withAnimation {
                    favoriteState = 0
                }
            }
            
        }
        .font(.title)
    }
}

struct Picker_ProgrammaticSelection_Previews: PreviewProvider {
    static var previews: some View {
        Picker_ProgrammaticSelection()
    }
}

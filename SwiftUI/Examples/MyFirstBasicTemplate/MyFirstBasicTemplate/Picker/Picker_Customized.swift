//
//  Picker_Customized.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 08/03/22.
//

import SwiftUI

struct Picker_Customized: View {
    @State private var favoriteState = 1
    @State private var personName = "Addick"
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Picker")
                .font(.title)
            Text("Con modificadores")
                .foregroundColor(.gray)
            Text("Tu favorito estado: ")
            Picker("Selecciona el estado", selection: $favoriteState) {
                Text("Distrito Federal").tag(0)
                Text("Puebla").tag(1)
                Text("Estado de México").tag(2)
            }
            .pickerStyle(.wheel)
            .padding(.horizontal)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.cyan)
            )
            .padding()
            
            Text("¿Quién está en la casa?")
            Picker("Selecciona a la persona", selection: $personName) {
                Text("Edgar").tag("Edgar")
                Text("Dulce").tag("Dulce")
                Text("Addick").tag("Addick")
                Text("Abril").tag("Abril")
                Text("Alissa").tag("Alissa")
            }
            .pickerStyle(.wheel)
            .padding(.horizontal)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.cyan, lineWidth: 1)
            )
            .padding()
            
        }
        .font(.title)
    }
}

struct Picker_Customized_Previews: PreviewProvider {
    static var previews: some View {
        Picker_Customized()
    }
}

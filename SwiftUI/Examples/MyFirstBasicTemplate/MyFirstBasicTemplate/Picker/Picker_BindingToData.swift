//
//  Picker_BindingToData.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 08/03/22.
//

import SwiftUI

struct Picker_BindingToData: View {
    @State private var personName = "Addick"
    var people = ["Edgar", "Dulce", "Addick", "Abril", "Alissa"]
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Picker", subtitulo: "Ligando información", description: "Usar un ForEach con el PickerView para poblar la información")
            
            Text("¿Quién está en casa?")
                .font(.title3)
            
            Picker(selection: $personName, label: Text("")) {
                ForEach(people, id: \.self) { person in
                    Row(name: person)
                }
            }
            .pickerStyle(.wheel)
            
        }
        .font(.title)
    }
}

struct Picker_BindingToData_Previews: PreviewProvider {
    static var previews: some View {
        Picker_BindingToData()
    }
}

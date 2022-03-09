//
//  Picker_Menu.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 08/03/22.
//

import SwiftUI

struct Picker_Menu: View {
    @State private var personName = "Addick"
    var people = ["Edgar", "Dulce", "Addick", "Abril", "Alissa"]
    
    var body: some View {
        
        VStack(spacing: 20) {
            HeaderView(titulo: "Picker", subtitulo: "Menú", description: "Se puede aplicar un estilo diferente de picker para el picker del menú")
            
            Spacer()
            
            Text("¿Quién está en casa hoy?")
                .padding(.bottom, 0)
            
            Picker(selection: $personName, label: Text("¿Quién está en casa hoy?")) {
                ForEach(people, id: \.self) { person in
                    Text(person)
                }
            }
            .pickerStyle(.menu)
            
            Spacer()
            
            
        }
        .font(.title)
        
    }
}

struct Picker_Menu_Previews: PreviewProvider {
    static var previews: some View {
        Picker_Menu()
    }
}

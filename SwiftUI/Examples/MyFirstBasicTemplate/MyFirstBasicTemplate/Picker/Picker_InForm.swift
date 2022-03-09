//
//  Picker_InForm.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 08/03/22.
//

import SwiftUI

struct Picker_InForm: View {
    @State private var diasSeleccionados = "2"
    var numeros_opciones = ["1", "2", "3", "4", "5"]
    
    var body: some View {
        NavigationView {
            
            VStack {
                HeaderView(titulo: "", subtitulo: "Pickers en formularios", description: "Cuando un picker está en un formulario, se navegará a otra vista para su selección.")
                
                Form {
                    
                    Picker("Frecuencia", selection: $diasSeleccionados) {
                        ForEach(numeros_opciones, id: \.self) { number in
                            Text("\(number) Días").tag(number)
                        }
                    }
                    
                }
                .navigationTitle("Picker")
                
            }
            
            
        }
        .font(.title)
    }
}

struct Picker_InForm_Previews: PreviewProvider {
    static var previews: some View {
        Picker_InForm()
    }
}

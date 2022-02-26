//
//  Form_ListRowBackground.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 26/02/22.
//

import SwiftUI

struct Form_ListRowBackground: View {
    var body: some View {
        Form {
            
            Section {
                Text("List Row Background")
                    .foregroundColor(.blue)
                
                Text("Los formularios y las listas permiten poner una vista en el fondo utilizando una función llamada \"listRowBackground(view:)\".")
                
                Text("Puedes usar este modificador en una fila, como en este caso")
                    .listRowBackground(Color.cyan)
                    .foregroundColor(.white)
            } header: {
                Text("Form")
                    .font(.largeTitle)
            }
            
            
            Section {
                Text("O se puede poner una vista para una entera sección")
                Text("Notar que el color del cabecero de la sección no es afectado cuando pones la sección.")
                    .fixedSize(horizontal: false, vertical: true)
            } header: {
                Text("Entera Sección")
                    .font(.title)
                    .foregroundColor(.blue)
            }
            .foregroundColor(.white)
            .listRowBackground(Color.cyan)
            
            
        }
        .font(.title2)
    }
}

struct Form_ListRowBackground_Previews: PreviewProvider {
    static var previews: some View {
        Form_ListRowBackground()
    }
}

//
//  Form_HeaderAndFooters.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 26/02/22.
//

import SwiftUI

struct Form_HeaderAndFooters: View {
    var body: some View {
        Form {
            
            Section {
                Text("Se puede agregar cualquier vista a un cabecero de sección.")
                Text("EL color predeterminado es el gris.")
            } header: {
                Text("Section Header Text")
            }
            
            Section {
                Text("Este es un ejemplo de un cabecero de sección con imagen y texto")
            } header: {
                SectionTextAndImage(name: "People", image: "person.2.square.stack.fill")
            }
            
            Section {
                Text("Aquí un ejemplo de pie de página para una sección")
            } footer: {
                Text("Mi primer pie de página")
                    .bold()
            }
            
            
        }
    }
}

struct SectionTextAndImage: View {
    var name: String
    var image: String
    var body: some View {
        HStack {
            Image(systemName: image)
                .padding(.trailing)
            Text(name)
        }
        .padding()
        .font(.title)
        .foregroundColor(.cyan)
    }
    
}

struct Form_HeaderAndFooters_Previews: PreviewProvider {
    static var previews: some View {
        Form_HeaderAndFooters()
    }
}

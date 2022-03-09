//
//  Picker_RowsWithImages.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 08/03/22.
//

import SwiftUI

struct Picker_RowsWithImages: View {
    @State private var personName = "Addick"
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Picker", subtitulo: "Filas con imágenes", description: "La personalización de una fila es limitada. Agregando una imagen funciona.")
            
            Picker(selection: $personName, label: Text("")) {
                Row(name: "Edgar").tag("Edgar")
                Row(name: "Dulce").tag("Dulce")
                Row(name: "Addick").tag("Addick")
                Row(name: "Abril").tag("Abril")
                Row(name: "Alissa").tag("Alissa")
            }
            .pickerStyle(.wheel)
            .padding(.horizontal)
            
        }
        .font(.title)
    }
}

fileprivate struct Row: View {
    var name: String
    
    var body: some View {
        return HStack {
            Image(systemName: "person.fill")
                .padding(.trailing)
                .foregroundColor(Color.cyan)
            Spacer()
            Text(name)
        }
    }
    
}

struct Picker_RowsWithImages_Previews: PreviewProvider {
    static var previews: some View {
        Picker_RowsWithImages()
    }
}

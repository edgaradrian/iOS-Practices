//
//  Navigation_Searchable_Search.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 12/03/22.
//

import SwiftUI

struct Navigation_Searchable_Search: View {
    
    private let locations = ["Centro", "Polanco", "Chapultepec", "La Villa", "Ciudad Universitaria", "Tlalpan", "Pantitlán"]

    @State private var searchResults: [String] = []
    @State private var locationSearch = ""
    @State private var destination = ""
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("¿Adónde quieres ir?")
                Text(destination)
                    .fontWeight(.bold)
                Spacer()
                HeaderView(titulo: "", subtitulo: "Searchable", description: "Usar un buscador para agregar texto al formulario de la barra de navegación.")
            }
            .font(.title)
            .navigationTitle(Text("Navigation"))
        }
        .searchable(text: $locationSearch) {
            ForEach(searchResults, id:\.self) { name in
                Button(name) {
                    destination = name
                }
            }
        }
        .onChange(of: locationSearch) { newValue in
            searchResults = locations.filter({ name in
                name.hasPrefix(locationSearch)
            })
        }
    }
}

struct Navigation_Searchable_Search_Previews: PreviewProvider {
    static var previews: some View {
        Navigation_Searchable_Search()
    }
}
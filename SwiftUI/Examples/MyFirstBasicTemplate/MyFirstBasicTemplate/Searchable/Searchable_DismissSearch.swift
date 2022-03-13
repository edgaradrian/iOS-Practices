//
//  Searchable_DismissSearch.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 12/03/22.
//

import SwiftUI

struct Searchable_DismissSearch: View {
    private let locations = ["Centro", "Polanco", "Chapultepec", "La Villa", "Ciudad Universitaria", "Tlalpan", "Pantitlán"]
    @State private var searchResults: [String] = []
    @State private var locationSearch = ""
    @State private var destination = ""
    
    var body: some View {
        NavigationView {
            SearchableSubview(destination: $destination)
        }
        .searchable(text: $locationSearch) {
            ForEach(searchResults, id: \.self) { name in
                Button(name) {
                    destination = name
                }
            }
        }
        .onChange(of: locationSearch) { location in
            searchResults = locations.filter { name in
                name.hasPrefix(locationSearch)
            }
        }
    }
}

struct SearchableSubview: View {
    @Binding var destination: String
    @Environment(\.isSearching) var isSearching
    @Environment(\.dismissSearch) var dismissSearch
    
    var body: some View {
        VStack(spacing: 16) {
            Text("¿A dónde quieres ir?")
            Text(destination)
                .fontWeight(.bold)
            
            if isSearching && destination.isEmpty == false {
                Button("Confirmar") {
                    dismissSearch()
                }
            }
            
            Spacer()
            
            HeaderView(titulo: "", subtitulo: "Terminar Búsqueda", description: "Usar dismissSearch para cancelar la búsqueda")
            
        }
        .font(.title)
        .navigationTitle(Text("Searchable"))
    }
    
}

struct Searchable_DismissSearch_Previews: PreviewProvider {
    static var previews: some View {
        Searchable_DismissSearch()
    }
}

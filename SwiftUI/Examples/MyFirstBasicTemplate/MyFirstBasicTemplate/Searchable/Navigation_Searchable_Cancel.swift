//
//  Navigation_Searchable_Cancel.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 12/03/22.
//

import SwiftUI

struct Navigation_Searchable_Cancel: View {
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
            ForEach(searchResults, id: \.self) { name in
                Button(name) {
                    destination = name
                    locationSearch = ""
                }
            }
        }
        .onChange(of: locationSearch) { location in
            searchResults = locations.filter({ name in
                name.hasPrefix(locationSearch)
            })
        }
    }
}

extension View {
    
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        
    }//hideKeyboard
    
}

struct Navigation_Searchable_Cancel_Previews: PreviewProvider {
    static var previews: some View {
        Navigation_Searchable_Cancel()
    }
}

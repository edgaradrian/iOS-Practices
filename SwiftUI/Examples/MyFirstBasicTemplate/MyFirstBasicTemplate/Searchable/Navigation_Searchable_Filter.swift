//
//  Navigation_Searchable_Filter.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 12/03/22.
//

import SwiftUI

struct Navigation_Searchable_Filter: View {
    
    private let names = ["Edgar", "Adrián", "Dulce", "Astrid", "Abirl", "Alissa"]
    @State private var filteredNames: [String] = []
    @State private var nameSearch = ""
    
    var body: some View {
        NavigationView {
            
            VStack(spacing: 20) {
                List(nameSearch.isEmpty ? names : filteredNames, id: \.self) { name in
                    Text(name)
                        .font(.title)
                }
                
                HeaderView(titulo: "", subtitulo: "Searchable - Filter", description: "Usar Searchable para filtrar una lista existente")
                    .font(.title)
            
            }
            .navigationTitle(Text("Navigation"))
            
        }
        .searchable(text: $nameSearch, placement: .navigationBarDrawer(displayMode: .always), prompt: Text("Filter"))
        .onChange(of: nameSearch) { name in
            filteredNames = names.filter({ name in
                name.hasPrefix(nameSearch)
            })
        }
        
    }
}

struct Navigation_Searchable_Filter_Previews: PreviewProvider {
    static var previews: some View {
        Navigation_Searchable_Filter()
    }
}

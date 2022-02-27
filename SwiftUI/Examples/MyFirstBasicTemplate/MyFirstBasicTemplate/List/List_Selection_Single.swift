//
//  List_Selection_Single.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 27/02/22.
//

import SwiftUI

struct List_Selection_Single: View {
    @State private var data = ["PAckers", "Aaron Rodgers", "Aaron Jones", "Davante Adams", "Randall Cobb", "Jordy Nelson"]
    @State private var selection: String?
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                HeaderView(titulo: "List", subtitulo: "Selecting a Row", description: "Usar el parámetro de selección en una lista y suministrar uns propiedad State para mantener la selección.")
                
                List(data, id: \.self, selection: $selection) { item in
                    Text(item)
                }
            }
            .font(.title)
            .navigationTitle("Packers")
            .toolbar {
                EditButton()
            }
        }
    }
}

struct List_Selection_Single_Previews: PreviewProvider {
    static var previews: some View {
        List_Selection_Single()
    }
}

//
//  List_Selection_Multiple.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 27/02/22.
//

import SwiftUI

struct List_Selection_Multiple: View {
    @State private var data = ["Aaron Rodgers", "Aaron JOnes", "Davante Adams", "Randall Cobb", "Jordy Nelson"]
    
    @State private var selections = Set<String>()
    
    var body: some View {
        
        NavigationView {
            VStack(spacing: 0) {
                HeaderView(titulo: "List", subtitulo: "Seleccionando multiples filas", description: "Cambiar la propiedad @State para sostener un conjunto de valores.")
                
                List(data, id: \.self, selection: $selections) { item in
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

struct List_Selection_Multiple_Previews: PreviewProvider {
    static var previews: some View {
        List_Selection_Multiple()
    }
}

//
//  LazyVGrid_Columns.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 22/02/22.
//

import SwiftUI

struct LazyVGrid_Columns: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "LazyVGrid", subtitulo: "Columns", description: "Se puede especificar el número de columnas con un arreglo de Griditems.")
            
            Text("Tres columnas (3 GridITems).")
            
            let threeColumns = [GridItem(), GridItem(), GridItem()]
            
            LazyVGrid(columns: threeColumns) {
                ForEach(1 ..< 10) { item in
                    Image(systemName: "\(item).circle")
                }
                Image(systemName: "arrow.down.circle")
            }
            .font(.largeTitle)
            
            Text("Cinco columnas (5 GridItems):")
            
            let fiveColumns = [GridItem(), GridItem(), GridItem(), GridItem(), GridItem()]
            
            LazyVGrid(columns: fiveColumns) {
                ForEach(1 ..< 11) { item in
                    Image(systemName: "\(item).circle")
                }
                Image(systemName: "arrow.down.circle")
            }
            .font(.largeTitle)
            
        }
        .font(.title)
    }
}

struct LazyVGrid_Columns_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGrid_Columns()
    }
}

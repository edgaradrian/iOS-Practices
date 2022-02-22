//
//  LazyHGrid_Rows.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 21/02/22.
//

import SwiftUI

struct LazyHGrid_Rows: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "LazyHGrid", subtitulo: "Rows", description: "Puedes especificar el número de filas dentro de un arreglo de GridItems.")
            
            Text("Two Rows (2 GridITems):")
            
            let twoRows = [GridItem(), GridItem()]
            
            LazyHGrid(rows: twoRows) {
                ForEach(1 ..< 11) { item in
                    Image(systemName: "\(item).circle")
                }
                Image(systemName: "arrow.right.circle")
            }
            .font(.largeTitle)
            
            Text("Cuatro Filas (4 GridItems):")
            
            let fourRows = [GridItem(), GridItem(), GridItem(), GridItem()]
            
            LazyHGrid(rows: fourRows) {
                ForEach(1 ..< 11) { item in
                    Image(systemName: "\(item).circle")
                }
                Image(systemName: "arrow.right.circle")
            }
            .font(.largeTitle)
            
        }
        .font(.title)
    }
}

struct LazyHGrid_Rows_Previews: PreviewProvider {
    static var previews: some View {
        LazyHGrid_Rows()
    }
}

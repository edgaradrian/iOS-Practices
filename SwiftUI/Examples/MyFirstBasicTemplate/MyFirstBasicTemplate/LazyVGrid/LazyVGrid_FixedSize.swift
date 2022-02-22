//
//  LazyVGrid_FixedSize.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 22/02/22.
//

import SwiftUI

struct LazyVGrid_FixedSize: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "LazyVGrid", subtitulo: "Fixed Width", description: "Los artículos dentro de un lazyVGrid pueden tener un tamaño definido usando el GridItem.")
            
            Text("Columnas fijadas: 50, 50, 50, 0, 150")
            
            let columns = [
                GridItem(GridItem.Size.fixed(50)),
                GridItem(.fixed(50)),
                GridItem(.fixed(50)),
                GridItem(.fixed(0)),
                GridItem(.fixed(150))
            ]
            
            LazyVGrid(columns: columns) {
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

struct LazyVGrid_FixedSize_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGrid_FixedSize()
    }
}

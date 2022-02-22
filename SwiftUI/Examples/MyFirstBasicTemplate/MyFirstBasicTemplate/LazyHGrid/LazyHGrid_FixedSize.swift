//
//  LazyHGrid_FixedSize.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 21/02/22.
//

import SwiftUI

struct LazyHGrid_FixedSize: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "LazyHGrid", subtitulo: "Fixed Height", description: "La altura de una file dentro de un LazyHGrid puede variar al modificar la altura del GridItem")
            
            Text("Fixed Heights: 50, 50, 20, 200")
            
            let rows = [GridItem(GridItem.Size.fixed(50)), GridItem(.fixed(50)), GridItem(.fixed(20)), GridItem(.fixed(200))
                ]
            
            LazyHGrid(rows: rows) {
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

struct LazyHGrid_FixedSize_Previews: PreviewProvider {
    static var previews: some View {
        LazyHGrid_FixedSize()
    }
}

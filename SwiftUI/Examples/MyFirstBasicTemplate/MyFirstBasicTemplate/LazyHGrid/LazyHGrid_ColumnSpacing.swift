//
//  LazyHGrid_ColumnSpacing.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 21/02/22.
//

import SwiftUI

struct LazyHGrid_ColumnSpacing: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "LazyHGrid", subtitulo: "Column Spacing", description: "El espacio entre los artículos dentro del LazyHGrid")
            
            Text("Spacing: 0")
            
            let gridItems = [GridItem()]
            
            LazyHGrid(rows: gridItems, spacing: 0) {
                ForEach(1 ..< 6) { item in
                    Image(systemName: "\(item).circle")
                }
                Image(systemName: "arrow.right.circle")
            }
            .font(.largeTitle)
            
            Text("Spacing: 20")
            
            LazyHGrid(rows: gridItems, spacing: 20) {
                ForEach(1 ..< 6) { item in
                    Image(systemName: "\(item).circle")
                }
                Image(systemName: "arrow.right.circle")
            }
            .font(.largeTitle)
            
        }
        .font(.title)
    }
}

struct LazyHGrid_ColumnSpacing_Previews: PreviewProvider {
    static var previews: some View {
        LazyHGrid_ColumnSpacing()
    }
}

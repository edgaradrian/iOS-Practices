//
//  LazyVGrid_RowSpacing.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 22/02/22.
//

import SwiftUI

struct LazyVGrid_RowSpacing: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "LazyVGrid", subtitulo: "Row Spacing", description: "Poner el espacio entre los artículos en el LazyVGrid con el modificador de espacio.")
            
            Text("Spacing: 0")
            
            let gridItems = [GridItem()]
            
            LazyVGrid(columns: gridItems, spacing: 0) {
                ForEach(1 ..< 4) { item in
                    Image(systemName: "\(item).circle")
                }
                Image(systemName: "arrow.down.circle")
            }
            .font(.largeTitle)
            
            Text("Spacing: 20")
            
            LazyVGrid(columns: gridItems, spacing: 20) {
                ForEach(1 ..< 4) { item in
                    Image(systemName: "\(item).circle")
                }
                Image(systemName: "arrow.down.circle")
            }
            .font(.largeTitle)
            
        }
        .font(.title)
    }
}

struct LazyVGrid_RowSpacing_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGrid_RowSpacing()
    }
}

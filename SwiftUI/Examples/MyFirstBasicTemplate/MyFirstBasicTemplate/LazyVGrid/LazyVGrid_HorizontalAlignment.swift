//
//  LazyVGrid_HorizontalAlignment.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 23/02/22.
//

import SwiftUI

struct LazyVGrid_HorizontalAlignment: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "LazyVGrid", subtitulo: "Horizontal Alignment", description: "Puedes controlar el alineado horizontal de cada columna a través de los GridItems.")
            
            HStack(spacing: 20) {
                Text("Leading")
                Text("Trailing")
                Text("Center")
            }
            
            let cols = [
                GridItem(.fixed(100), alignment: .leading),
                GridItem(.fixed(100), alignment: .trailing),
                GridItem(.fixed(100), alignment: .center)
            ]
            
            LazyVGrid(columns: cols) {
                ForEach(1 ..< 13) { item in
                    Image(systemName: "\(item).circle")
                }
                Image(systemName: "arrow.down.circle")
            }
            .font(.largeTitle)
            
        }
        .font(.title)
    }
}

struct LazyVGrid_HorizontalAlignment_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGrid_HorizontalAlignment()
    }
}

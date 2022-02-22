//
//  LazyHGrid_VerticalAlignment.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 22/02/22.
//

import SwiftUI

struct LazyHGrid_VerticalAlignment: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "LazyHGrid", subtitulo: "Vertical Alignment", description: "Tú puedes controlar el alineado vertical de cada fila a través de los GridItems.")
            
            HStack(spacing: 20) {
                VStack(alignment: .trailing, spacing: 20) {
                    Text("Bottom")
                    Text("Top")
                    Text("Center")
                }
                
                let rows = [
                    GridItem(.fixed(50), alignment: .bottom),
                    GridItem(.fixed(50), alignment: .top),
                    GridItem(.fixed(50), alignment: .center)
                ]
                
                LazyHGrid(rows: rows) {
                    ForEach(1 ..< 11) { item in
                        Image(systemName: "\(item).circle")
                    }
                    Image(systemName: "arrow.right.circle")
                }
                .font(.largeTitle)
                
            }
            
            
        }
        .font(.title)
    }
}

struct LazyHGrid_VerticalAlignment_Previews: PreviewProvider {
    static var previews: some View {
        LazyHGrid_VerticalAlignment()
    }
}

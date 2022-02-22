//
//  LazyHGrid_RowSpacing.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 22/02/22.
//

import SwiftUI

struct LazyHGrid_RowSpacing: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "LazyHGrid", subtitulo: "Row Spacing", description: "Especificar la cantidad de espacio entre cada fila usando el parámetro de spacing del GridItem. Esto puede ser usado con cualquier opción de GridItem.Size: fixed, flexible o adaptive.")
            
            Text("Top Row Spacing: 40")
            
            Text("Middle Row Spacing: 20")
            
            let rows = [GridItem(spacing: 40),
                        GridItem(spacing: 20),
                        GridItem()
            ]
            
            LazyHGrid(rows: rows) {
                ForEach(1 ..< 11) { item in
                    Color.green
                        .frame(width: 50)
                }
            }
            
        }
        .font(.title)
    }
}

struct LazyHGrid_RowSpacing_Previews: PreviewProvider {
    static var previews: some View {
        LazyHGrid_RowSpacing()
    }
}

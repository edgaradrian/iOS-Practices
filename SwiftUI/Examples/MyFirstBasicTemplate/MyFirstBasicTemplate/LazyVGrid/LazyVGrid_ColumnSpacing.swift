//
//  LazyVGrid_ColumnSpacing.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 23/02/22.
//

import SwiftUI

struct LazyVGrid_ColumnSpacing: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "LazyVGrid", subtitulo: "Column Spacing", description: "especificar la cantidad de espacio a la derecha de cada columna por usar el parámetro de spacing de GridItem. Esto puede ser usado con cualquier opción de GridItem.Size: fixed, flexible o adaptive")
            
            Text("Column Spacing")
            
            HStack {
                Text("40")
                Spacer()
                Text("2")
                    .padding(.leading, 40)
                Spacer()
                Text("20")
                Spacer()
                Text("None")
            }
            .padding(.horizontal)
            
            let columns = [
                GridItem(spacing: 40),
                GridItem(spacing: 2),
                GridItem(spacing: 20),
                GridItem()
            ]
            
            LazyVGrid(columns: columns) {
                ForEach(1 ..< 21) { item in
                    Color.green.frame(height: 50)
                }
            }
            
        }
        .font(.title)
    }
}

struct LazyVGrid_ColumnSpacing_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGrid_ColumnSpacing()
    }
}

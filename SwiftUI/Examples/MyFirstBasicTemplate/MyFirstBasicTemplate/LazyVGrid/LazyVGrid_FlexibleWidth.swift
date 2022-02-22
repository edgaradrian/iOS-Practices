//
//  LazyVGrid_FlexibleWidth.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 22/02/22.
//

import SwiftUI

struct LazyVGrid_FlexibleWidth: View {
    var body: some View {
        VStack(spacing: 15) {
            
            HeaderView(titulo: "LazyVGrid", subtitulo: "Flexible Width", description: "Los artículos dentro de un LazyVGrid pueden tener una anchura flexible con GridItem")
            
            Text("Primera Columna Flexible: 70 a 80")
            Text("Segunda columna Flexible: de 20 a infinito")
            
            let columns = [
                GridItem(.flexible(minimum: 70, maximum: 80)),
                GridItem(.flexible(minimum: 80))
            ]
            
            LazyVGrid(columns: columns) {
                ForEach(1 ..< 7) { item in
                    Color.green
                        .frame(height: 50)
                }
            }
            Spacer()
            
            Text("Primera Columna Flexible: de 10 a 20")
            Text("Segunda Columna flexible: de 20 a 80")
            
            let columns2 = [
                GridItem(.flexible(minimum: 10, maximum: 20)),
                GridItem(.flexible(minimum: 20, maximum: 80))
            ]
            
            LazyVGrid(columns: columns2) {
                ForEach(1 ..< 7) { item in
                    Color.green
                        .frame(height: 50)
                }
            }
            
        }
        .font(.title)
    }
}

struct LazyVGrid_FlexibleWidth_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGrid_FlexibleWidth()
    }
}

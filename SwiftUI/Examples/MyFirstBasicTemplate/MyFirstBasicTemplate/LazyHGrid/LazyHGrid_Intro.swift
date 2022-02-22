//
//  LazyHGrid_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 20/02/22.
//

import SwiftUI

struct LazyHGrid_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "LazyHGrid", subtitulo: "Introduction", description: "LazyHGrid trabaja como un HStack con dos diferencias principalmente: \n1. Las vistas hijas son ordenadas en una cuadrícula.\n2. Las vistas hijas son creadas únicamente cuando son necesarias.")
            
            let gridItems = [GridItem()]
            
            LazyHGrid(rows: gridItems) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
                Image(systemName: "4.circle")
                Image(systemName: "5.circle")
                Image(systemName: "6.circle")
                Image(systemName: "7.circle")
                Image(systemName: "8.circle")
                Image(systemName: "arrow.right.circle")
            }
            .font(.largeTitle)
            
        }
        .font(.title)
    }
}

struct LazyHGrid_Intro_Previews: PreviewProvider {
    static var previews: some View {
        LazyHGrid_Intro()
    }
}

//
//  LazyVGrid_Introduction.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 22/02/22.
//

import SwiftUI

struct LazyVGrid_Introduction: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "LazyVGrid", subtitulo: "Introduction", description: "El LazyVGrid trabaja como un VStack con dos principales diferencias:\n1. Las vistas hijas pueden ser ordenadas en una cuadrícula\n2. Las vistas hijas pueden ser creadas como son necesarias.")
            
            let gridItems = [GridItem()]
            
            LazyVGrid(columns: gridItems) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
                Image(systemName: "4.circle")
                Image(systemName: "5.circle")
                Image(systemName: "6.circle")
                Image(systemName: "7.circle")
                Image(systemName: "8.circle")
                Image(systemName: "arrow.down.circle")
            }
            .font(.largeTitle)
            
        }
        .font(.title)
    }
}

struct LazyVGrid_Introduction_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGrid_Introduction()
    }
}

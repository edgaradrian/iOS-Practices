//
//  TabView_PageTabViewStyle_IndexDisplayMode.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 20/03/22.
//

import SwiftUI

struct TabView_PageTabViewStyle_IndexDisplayMode: View {
    var body: some View {
        TabView {
            VStack(spacing: 20) {
                HeaderView(titulo: "TabView", subtitulo: "Index Display Mode", description: "También se pueden quitar los puntos de navegación con el parámetro indexDisplayMode y colocando .never")
                
                Text("Página 1")
                
                Spacer()
                
                DescView(description: "También hay existe el autómatico para mostrar los puntos de navegación.", backColor: .blue)
                
            }
            
            VStack {
                Text("Página 2")
            }
            
            VStack {
                Text("Página 3")
            }
            
        }
        .font(.title)
        .tabViewStyle(.page(indexDisplayMode: .never
                           
                           
                           
                           
                           
                           
                           
                           
                           
                           ))
    }
}

struct TabView_PageTabViewStyle_IndexDisplayMode_Previews: PreviewProvider {
    static var previews: some View {
        TabView_PageTabViewStyle_IndexDisplayMode()
    }
}

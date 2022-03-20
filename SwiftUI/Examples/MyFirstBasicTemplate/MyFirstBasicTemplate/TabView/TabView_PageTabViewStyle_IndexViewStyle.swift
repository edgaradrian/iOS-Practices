//
//  TabView_PageTabViewStyle_IndexViewStyle.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 20/03/22.
//

import SwiftUI

struct TabView_PageTabViewStyle_IndexViewStyle: View {
    var body: some View {
        TabView {
            
            VStack(spacing: 20) {
                HeaderView(titulo: "TabView", subtitulo: "Index View Style", description: "No se puede ver el indice en los puntos del fondo de la pantalla porque están en la forma white-on-white")
                
                Text("Página 1")
                
                Spacer()
                
                DescView(description: "Para mejorar los indices de los botones, se usa el indexViewStyle modificador.", backColor: .blue)
                
                Image(systemName: "arrow.down.circle")
                    .padding(.bottom, 45)
                
            }
            
            VStack {
                Text("Página 2")
            }
            
            VStack {
                Text("Página 3")
            }
            
        }
        .font(.title)
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

struct TabView_PageTabViewStyle_IndexViewStyle_Previews: PreviewProvider {
    static var previews: some View {
        TabView_PageTabViewStyle_IndexViewStyle()
    }
}

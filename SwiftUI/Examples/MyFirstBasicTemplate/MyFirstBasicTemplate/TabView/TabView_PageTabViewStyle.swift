//
//  TabView_PageTabViewStyle.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 20/03/22.
//

import SwiftUI

struct TabView_PageTabViewStyle: View {
    var body: some View {
        TabView {
            VStack(spacing: 20) {
                HeaderView(titulo: "TabView", subtitulo: "PageTabViewStyle", description: "El TabView puede tener un estilo habilitado que permite la habilidad de deslizar horizontalmente a traves de las vistas.")
                
                Text("Página")
                HStack {
                    Image(systemName: "1.circle")
                    Image(systemName: "arrow.right.circle")
                }
            }
            
            VStack {
                Text("Página")
                HStack {
                    Image(systemName: "arrow.left.circle")
                    Image(systemName: "2.circle")
                    Image(systemName: "arrow.right.circle")
                }
            }
            
            VStack {
                Text("Página")
                HStack {
                    Image(systemName: "arrow.left.circle")
                    Image(systemName: "3.circle")
                }
            }
            .font(.title)
            .tabViewStyle(.page)
            
        }
    }
}

struct TabView_PageTabViewStyle_Previews: PreviewProvider {
    static var previews: some View {
        TabView_PageTabViewStyle()
    }
}

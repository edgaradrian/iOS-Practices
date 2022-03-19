//
//  TabView_TabItems.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 18/03/22.
//

import SwiftUI

struct TabView_TabItems: View {
    var body: some View {
        TabView {
            
            TabOne()
                .tabItem {
                    Text("Tab Texto")
                }
            
            Text("Llamadas")
                .tabItem {
                    Image(systemName: "phone")
                }
            
            Text("Llamadas salientes")
                .tabItem {
                    Image(systemName: "phone.arrow.up.right")
                    Text("Salientes")
                }
            
        }
    }
}//TabView_TabItems

struct TabOne: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "TabView", subtitulo: "Artículos Tab", description: "TabITems puede aceptar Texto, Imagen o ambos. Notar que el orden de Texto e Imagen no importa para el tabItem.")
                .font(.title)
        }
    }
}

struct TabView_TabItems_Previews: PreviewProvider {
    static var previews: some View {
        TabView_TabItems()
    }
}

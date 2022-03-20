//
//  TabView_Badge.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 20/03/22.
//

import SwiftUI

struct TabView_Badge: View {
    var body: some View {
        TabView {
            //Tab1
            VStack(spacing: 20.0) {
                HeaderView(titulo: "TabView", subtitulo: "Placa", description: "Usar el badge modificador para agregar un número a la pestaña.")
            }
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            
            //Tab 2
            VStack {
                Text("mensajes")
            }
            .tabItem {
                Image(systemName: "envelope")
                Text("Mensajes")
            }
            .badge(15)
            
            
        }
        .font(.title)
    }
}

struct TabView_Badge_Previews: PreviewProvider {
    static var previews: some View {
        TabView_Badge()
    }
}

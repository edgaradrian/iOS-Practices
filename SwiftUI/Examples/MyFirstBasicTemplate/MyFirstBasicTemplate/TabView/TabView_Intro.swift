//
//  TabView_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 18/03/22.
//

import SwiftUI

struct TabView_Intro: View {
    var body: some View {
        TabView {
            VStack(spacing: 20) {
                HeaderView(titulo: "TabView", subtitulo: "Introducción", description: "El TabView puede tener multiples vistas.")
                
                Text("Al final de la vista, se debe agregar el modificador tabItem para mostrar la navegación entre vistas.")
                    .padding()
                
            }
            .tabItem {
                Text("Tab 1")
            }
            
            Text("Esta vista representa la segunda pantalla")
                .tabItem {
                    Text("Tab 2")
                }
            
        }
        .font(.title)
    }
}

struct TabView_Intro_Previews: PreviewProvider {
    static var previews: some View {
        TabView_Intro()
    }
}

//
//  TabView_Background.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 20/03/22.
//

import SwiftUI

struct TabView_Background: View {
    var body: some View {
        TabView {
            
            VStack {
                HeaderView(titulo: "TabView", subtitulo: "Fondo", description: "El nuevo background modificador permite tener fondos que ignores el área segura.")
                
                Spacer()
                
                Divider()
                    .background(.ultraThinMaterial)
                
            }
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            
            
            VStack {
                Text("Mensajes")
                Spacer()
                Divider()
                    .background(Color.cyan.opacity(0.5))
            }
            .tabItem {
                Image(systemName: "envelope")
                Text("Mensajes")
            }
            
        }
        .font(.title)
    }
}

struct TabView_Background_Previews: PreviewProvider {
    static var previews: some View {
        TabView_Background()
    }
}

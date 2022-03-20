//
//  TabView_Colors.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 20/03/22.
//

import SwiftUI

struct TabView_Colors: View {
    var body: some View {
        TabView {
            
            VStack(spacing: 20) {
                
                HeaderView(titulo: "TabView", subtitulo: "Tab Item Colors", description: "Poner el color de la pestaña activada colocando en accentColor.")
                
            }
            .tabItem {
                Image(systemName: "star.fill")
            }
            
            Text("Segunda pantalla")
                .tabItem {
                    Image(systemName: "moon.fill")
                }
                .foregroundColor(.cyan)
            
            Text("Tercera Pantalla")
                .tabItem {
                    Image(systemName: "sun.min.fill")
                }
            
            
        }
        .font(.title)
        .accentColor(.yellow)
        
    }
}

struct TabView_Colors_Previews: PreviewProvider {
    static var previews: some View {
        TabView_Colors()
    }
}

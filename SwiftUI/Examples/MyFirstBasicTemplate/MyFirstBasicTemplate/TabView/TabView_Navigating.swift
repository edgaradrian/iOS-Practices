//
//  TabView_Navigating.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 18/03/22.
//

import SwiftUI

struct TabView_Navigating: View {
    @State private var selectedTab = 1
    
    var body: some View {
        TabView(selection: $selectedTab) {
            
            VStack(spacing: 20) {
                HeaderView(titulo: "TabView", subtitulo: "Navegando", description: "Agregar una valor de etiqueta único para cada pantalla en donde quieres navegar programaticamente.")
                
                Button("Ir a la pestaña 2") {
                    selectedTab = 2
                }
                
            }
            .tabItem {
                Image(systemName: "star.fill")
            }
            .tag(1)
            
            
            VStack {
                Text("Segunda pantalla")
            }
            .tabItem {
                Image(systemName: "moon.fill")
            }
            .tag(2)
        }
        .font(.title)
    }
}

struct TabView_Navigating_Previews: PreviewProvider {
    static var previews: some View {
        TabView_Navigating()
    }
}

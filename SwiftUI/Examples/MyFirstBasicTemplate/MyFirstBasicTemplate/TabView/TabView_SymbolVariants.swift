//
//  TabView_SymbolVariants.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 20/03/22.
//

import SwiftUI

struct TabView_SymbolVariants: View {
    var body: some View {
        TabView {
            
            VStack(spacing: 20.0) {
                HeaderView(titulo: "TabView", subtitulo: "Symbol Variants", description: "La plataforma cambiará el SF símbolo que estés usando para llenar o no dependiendo del contexto.")
                
                Text("Original SF Symbols")
                Image(systemName: "star")
                Image(systemName: "moon")
                Image(systemName: "sun.min")
            }
            .tabItem {
                Image(systemName: "star")
                Text("Home")
            }
            
            Text("Segunda pantalla")
                .tabItem {
                    Image(systemName: "moon")
                    Text("Noche")
                }
                .foregroundColor(.cyan)
            
            Text("Tercera Pantalla")
                .tabItem {
                    Image(systemName: "sun.min")
                    Text("Día")
                }
       
        
        }
        .font(.title)
    }
}

struct TabView_SymbolVariants_Previews: PreviewProvider {
    static var previews: some View {
        TabView_SymbolVariants()
    }
}

//
//  TabView_TooManyTabs.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 18/03/22.
//

import SwiftUI

struct TabView_TooManyTabs: View {
    var body: some View {
        TabView {
            Text("Pantalla de Llamada").tabItem {
                Image(systemName: "phone")
                Text("Llamar")
            }
            
            Text("Pantalla llamadas salientes").tabItem {
                Image(systemName: "phone.arrow.up.right")
                Text("Salientes")
            }
            
            Text("Pantalla llamadas entrantes").tabItem {
                Image(systemName: "phone.arrow.down.left")
                Text("Entrantes")
            }
            
            Text("Pantalla de agenda telefónica").tabItem {
                Image(systemName: "book")
                Text("Agenda Telefónica")
            }
            
            Text("Pantalla de historia telefónica").tabItem {
                Image(systemName: "clock")
                Text("Historial")
            }
            
            Text("Nuevo Número telefónico").tabItem {
                Image(systemName: "phone.badge.plus")
                Text("Nuevo")
            }
            
        }
    }
}

struct TabView_TooManyTabs_Previews: PreviewProvider {
    static var previews: some View {
        TabView_TooManyTabs()
    }
}

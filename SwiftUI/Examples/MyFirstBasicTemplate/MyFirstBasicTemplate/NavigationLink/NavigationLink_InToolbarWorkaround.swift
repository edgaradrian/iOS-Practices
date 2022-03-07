//
//  NavigationLink_InToolbarWorkaround.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 07/03/22.
//

import SwiftUI

struct NavigationLink_InToolbarWorkaround: View {
    @State private var navigate = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                HeaderView(titulo: "", subtitulo: "Solución alternativa con ToolbarItem", description: "Usa un botón en el ToolbarItem y un NavigationLink con isActive para navegar.")
                
                NavigationLink(destination: Text("Opciones"), isActive: $navigate, label: {})
                
            }
            .toolbar {
                ToolbarItem {
                    Button(action: { navigate = true }) {
                        Image(systemName: "slider.horizontal.3")
                    }
                }
            }
            .navigationTitle("NavigationLink")
            .font(.title)
        }
    }
}

struct NavigationLink_InToolbarWorkaround_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLink_InToolbarWorkaround()
    }
}

//
//  NavigationLink_InToolbarItem.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 07/03/22.
//

import SwiftUI

struct NavigationLink_InToolbarItem: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                HeaderView(titulo: "", subtitulo: "En ToolbarItem", description: "No poner un NavigationLink dentro de un ToolbarItem")
            }
            .toolbar {
                /*ToolbarItem {
                    NavigationLink(destination: Text("Opciones")) {
                        Image(systemName: "slider.horizontal.3")
                    }
                }*/
            }
            .navigationTitle("NavigationLink")
            .font(.title)
        }
    }
}

struct NavigationLink_InToolbarItem_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLink_InToolbarItem()
    }
}

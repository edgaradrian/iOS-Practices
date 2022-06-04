//
//  Toolbar_InlineNavBar.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 03/06/22.
//

import SwiftUI

struct Toolbar_InlineNavBar: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                HeaderView(titulo: "Toolbar", subtitulo: "En línea la barra de navegación.", description: "Un artículo de la barra de navegación será mostrado en línea y sólo uno puede ser mostrado.")
                
                Spacer()
            }
            .navigationTitle(Text("Toolbar"))
            .navigationBarTitleDisplayMode(.inline)
            .font(.title)
            .toolbar {
                ToolbarItem {
                    Button(action: {}) {
                        Image(systemName: "aspectratio")
                    }
                }
            }
            .tint(.blue)
        }
    }
}

struct Toolbar_InlineNavBar_Previews: PreviewProvider {
    static var previews: some View {
        Toolbar_InlineNavBar()
    }
}

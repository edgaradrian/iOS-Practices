//
//  Toolbar_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 03/06/22.
//

import SwiftUI

struct Toolbar_Intro: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                HeaderView(titulo: "Mi Toolbar", subtitulo: "Introducción", description: "Usar el modificador toolBar para crear ToolbarItems (botones) que serán mostrados en el Navigation View.")
                Spacer()
            }
            .navigationTitle("Toolbar")
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

struct Toolbar_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Toolbar_Intro()
    }
}

//
//  Toolbar_ControlGroup.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 06/06/22.
//

import SwiftUI

struct Toolbar_ControlGroup: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                HeaderView(titulo: "", subtitulo: "ControlGroup", description: "Usar el ControlGroup con un estilo de navegación para mostrar multiples botones en una NavigationView que se colocarán más juntos que con un ToolbarItemGroup.")
                Spacer()
            }
            .navigationTitle("Toolbar")
            .font(.title)
            .toolbar {
                ToolbarItem {
                    ControlGroup {
                        Button(action: {}) {
                            Image(systemName: "aspectratio")
                        }
                        Button(action: {}) {
                            Image(systemName: "gearshape.fill")
                        }
                    }
                    .controlGroupStyle(.automatic)
                }
            }
            .tint(.blue)
        }
    }
}

struct Toolbar_ControlGroup_Previews: PreviewProvider {
    static var previews: some View {
        Toolbar_ControlGroup()
    }
}

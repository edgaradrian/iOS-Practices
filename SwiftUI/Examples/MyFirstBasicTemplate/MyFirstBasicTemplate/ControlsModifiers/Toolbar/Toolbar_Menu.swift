//
//  Toolbar_Menu.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 06/06/22.
//

import SwiftUI

struct Toolbar_Menu: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                HeaderView(titulo: "", subtitulo: "Mostrando un menú", description: "Se puede crear un menú desde la barra de herramientas")
                
                Spacer()
            }
            .navigationTitle("Toolbar")
            .font(.title)
            .toolbar {
                ToolbarItem {
                    Menu {
                        Button(action: {}) {
                            Text("Agregar color")
                            Image(systemName: "eyedropper.full")
                        }
                        
                        Button(action: {}) {
                            Text("Cambiar contraste")
                            Image(systemName: "circle.lefthalf.fill")
                        }
                        
                    } label: {
                        
                        Image(systemName: "line.3.horizontal.circle")
                        
                    }

                }
            }
            .tint(.blue)
        }
    }
}

struct Toolbar_Menu_Previews: PreviewProvider {
    static var previews: some View {
        Toolbar_Menu()
    }
}

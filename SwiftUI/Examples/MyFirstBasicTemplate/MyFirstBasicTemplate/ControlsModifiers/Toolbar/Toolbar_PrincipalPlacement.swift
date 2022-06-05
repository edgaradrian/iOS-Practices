//
//  Toolbar_PrincipalPlacement.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 04/06/22.
//

import SwiftUI

struct Toolbar_PrincipalPlacement: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                HeaderView(titulo: "NavigationView", subtitulo: "Barra de Navegación personalizada", description: "Se pueden agregar vistas a la vista de navegación con un artículo de la barra de herramientas.")
                
                Spacer()
            }
            .font(.title)
            .navigationTitle("Mi título")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack(spacing: 0) {
                        Text("Mi lista")
                            .bold()
                        
                        Button(action: {}) {
                            Text("Desliar al principio")
                            Image(systemName: "chevron.up")
                        }
                        
                    }
                }
            }
            .tint(.blue)
        }
    }
}

struct Toolbar_PrincipalPlacement_Previews: PreviewProvider {
    static var previews: some View {
        Toolbar_PrincipalPlacement()
    }
}

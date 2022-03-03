//
//  Menu_MaxItems.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 03/03/22.
//

import SwiftUI

struct Menu_MaxItems: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Menu {
                    Button("Menú opción 1", action: {})
                    Button("Menú opción 2", action: {})
                    Button("Menú opción 3", action: {})
                    Button("Menú opción 4", action: {})
                    Button("Menú opción 5", action: {})
                    Button("Menú opción 6", action: {})
                    Button("Menú opción 7", action: {})
                    Button("Menú opción 8", action: {})
                    Button("Menú opción 9", action: {})
                    Menu("Más...") {
                        Button("Menú opción 10", action: {})
                        Button("Menú opción 11", action: {})
                    }
                } label: {
                    Image(systemName: "slider.horizontal.3")
                        .padding(.leading, 20)
                }
                Spacer()
            }
            
            Spacer()
            
            HeaderView(titulo: "Menú", subtitulo: "Número máximo de botones", description: "Como los contenedores de SwiftUI, sólo se pueden tener diez vistas en el menú.")
            
        }
    }
}

struct Menu_MaxItems_Previews: PreviewProvider {
    static var previews: some View {
        Menu_MaxItems()
    }
}

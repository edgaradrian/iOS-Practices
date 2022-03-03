//
//  Menu_OtherViewsWithin.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 03/03/22.
//

import SwiftUI

struct Menu_OtherViewsWithin: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                
                Menu {
                    Button("Menú opción 1", action: {})
                    Divider()
                    Button(action: {}) {
                        Text("Los Divisores pueden crear un separador más grueso")
                        Image(systemName: "hand.point.up")
                    }
                    Divider()
                    Text("Esta es una vista de texto")
                        .font(.caption)
                        .textCase(.uppercase)
                    Button(action: {}) {
                        Text("El texto del menú se mostrará en dos líneas")
                        Image(systemName: "paperplane")
                    }
                } label: {
                    Image(systemName: "slider.horizontal.3")
                        .padding(.leading, 20)
                }
                
                Spacer()
                
            }
            
            Spacer()
            
            HeaderView(titulo: "Menú", subtitulo: "Otras vistas dentro", description: "Se pueden agregar otras vistas dentro del menú, no sólo botones.")
            
            Spacer()
            
        }
        .font(.title)
    }
}

struct Menu_OtherViewsWithin_Previews: PreviewProvider {
    static var previews: some View {
        Menu_OtherViewsWithin()
    }
}

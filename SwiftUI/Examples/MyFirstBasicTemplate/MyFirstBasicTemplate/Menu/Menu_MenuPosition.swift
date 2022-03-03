//
//  Menu_MenuPosition.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 03/03/22.
//

import SwiftUI

struct Menu_MenuPosition: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Menu {
                    Button(action: {}) {
                        Text("Menu opción 1")
                        Image(systemName: "network")
                    }
                    Button(action: {}) {
                        Text("Menú opción 2")
                        Image(systemName: "antenna.radiowaves.left.and.right")
                    }
                } label: {
                    Image(systemName: "slider.horizontal.3")
                        .padding(.leading, 20)
                }
                
                Spacer()
            }
            
            Spacer()
            
            HeaderView(titulo: "Menú", subtitulo: "Menu Posición", description: "Dependiendo de la pocisión, el menú se desplegará hacia arriba o hacia abajo.")
            
            Spacer()
            
        }
        .font(.title)
        
    }
}

struct Menu_MenuPosition_Previews: PreviewProvider {
    static var previews: some View {
        Menu_MenuPosition()
    }
}

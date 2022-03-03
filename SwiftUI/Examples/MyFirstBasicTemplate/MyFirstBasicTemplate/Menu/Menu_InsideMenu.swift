//
//  Menu_InsideMenu.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 03/03/22.
//

import SwiftUI

struct Menu_InsideMenu: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Menu", subtitulo: "Inner Menu", description: "Se puede usar un Menu dentro de un Menu")
            
            Spacer()
            
            Menu("Editar") {
                
                Button(action: {}) {
                    Text("Agregar Color")
                    Image(systemName: "eyedropper.full")
                }
                
                Button(action: {}) {
                    Image(systemName: "circle.lefthalf.fill")
                    Text("Cambiar contraste")
                }
                
                Menu("More...") {
                    Button(action: {}) {
                        Text("Varita mágica")
                        Image(systemName: "wand.and.stars")
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "paintbrush.fill")
                        Text("Pintura mágica")
                    }
                }
                
            }
            
            Spacer()
        }
        .font(.title)
    }
}

struct Menu_InsideMenu_Previews: PreviewProvider {
    static var previews: some View {
        Menu_InsideMenu()
    }
}

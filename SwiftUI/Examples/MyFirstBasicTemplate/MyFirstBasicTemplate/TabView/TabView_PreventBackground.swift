//
//  TabView_PreventBackground.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 20/03/22.
//

import SwiftUI

struct TabView_PreventBackground: View {
    var body: some View {
        TabView {
            VStack(spacing: 20.0) {
                HeaderView(titulo: "TabView", subtitulo: "Prevenir Fondo", description: "Para prevenir que el fondo ignore el área segura de la pestaña, definir diferente límite.")
                
                Spacer()
                
                Button(action: {}) {
                    Text("Tomar acción")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                }
            }
            .tabItem {
                Image(systemName: "house")
            }
            
            VStack {
                Text("Mensajes")
                Spacer()
                Button(action: {}) {
                    Text("Tomar acción")
                        .foregroundColor(.white)
                        .padding()
                        .background(.cyan, ignoresSafeAreaEdges: .top)
                }
            }
            .tabItem {
                Image(systemName: "envelope")
            }
            
        }
        .font(.title)
    }
}

struct TabView_PreventBackground_Previews: PreviewProvider {
    static var previews: some View {
        TabView_PreventBackground()
    }
}

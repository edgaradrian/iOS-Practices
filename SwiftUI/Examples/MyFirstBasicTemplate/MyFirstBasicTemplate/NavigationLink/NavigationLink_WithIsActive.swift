//
//  NavigationLink_WithIsActive.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 05/03/22.
//

import SwiftUI

struct NavigationLink_WithIsActive: View {
    @State var isLinkActive = false
    
    var body: some View {
        NavigationView {
            VStack {
                
                HeaderView(titulo: "NavigationLink", subtitulo: "Con isActive", description: "Puedes automáticamente tener la navegación con NavigationLink usando un booleano.")
                
                Text("isLinkActive = \(isLinkActive.description)")
                
                NavigationLink(destination: NavigationLink_View2(isLinkActive: $isLinkActive), isActive: $isLinkActive) {
                    EmptyView()
                }
                
                Button("Ve a la vista 2") {
                    isLinkActive = true
                }

                Spacer()
                DescView(description: "Automáticamente al volver a esta vista, SwiftUI regresa a false isLinkActive", backColor: .cyan)
                
            }
            .font(.title)
            .navigationTitle("Navegación Automática")
        }
    }
}//NavigationLink_WithIsActive

struct NavigationLink_View2: View {
    @Binding var isLinkActive: Bool
    
    var body: some View {
        VStack {
            Text("Soy la vista dos")
            Spacer()
        }
        .font(.largeTitle)
    }
    
}//NavigationLink_View2


struct NavigationLink_WithIsActive_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLink_WithIsActive()
    }
}

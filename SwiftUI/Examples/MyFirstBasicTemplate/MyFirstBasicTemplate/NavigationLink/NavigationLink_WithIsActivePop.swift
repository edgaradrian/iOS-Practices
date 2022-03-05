//
//  NavigationLink_WithIsActivePop.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 05/03/22.
//

import SwiftUI

struct NavigationLink_WithIsActivePop: View {
    @State var isLinkActive = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                HeaderView(titulo: "NavigationLink", subtitulo: "Regresa a la vista raíz", description: "Al ligar la propiedad y regresar a falsa, puede volver a la vista inicia.")
                
                Text("isLinkActive: \(isLinkActive.description)")
                
                NavigationLink(destination: NAvigationLink_SecondView(isLinkActive: $isLinkActive), isActive: $isLinkActive) {
                    EmptyView()
                }
                
                Button("Navega a la vista 2") {
                    isLinkActive = true
                }
                
                Spacer()
                
            }
            .font(.title)
            .navigationTitle("Navegación Automática")
        }
    }
}//NavigationLink_WithIsActivePop

struct NAvigationLink_SecondView: View {
    @Binding var isLinkActive: Bool
    
    var body: some View {
        VStack {
            Text("isLinkActive: \(isLinkActive.description)")
            NavigationLink("Ir a la tercera vista", destination: NavigationLink_TercerVista(isLinkActive: $isLinkActive))
        }
        .font(.title)
        .navigationTitle("Vista Dos")
    }
}//NAvigationLink_SecondView

struct NavigationLink_TercerVista: View {
    
    @Binding var isLinkActive: Bool
    
    var body: some View {
        VStack {
            Text("isLinkActive: \(isLinkActive.description)")
            Button("Ir a la vista raíz") {
                isLinkActive.toggle()
            }
            
        }
        .font(.title)
        .navigationTitle("Vista Tres")
    }
    
    
}//NavigationLink_TercerVista

struct NavigationLink_WithIsActivePop_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLink_WithIsActivePop()
    }
}

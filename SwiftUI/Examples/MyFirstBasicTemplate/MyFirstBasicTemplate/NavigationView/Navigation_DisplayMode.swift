//
//  Navigation_DisplayMode.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 04/03/22.
//

import SwiftUI

struct Navigation_DisplayMode: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.cyan
                
                VStack(spacing: 20) {
                    Image(systemName: "globe")
                        .font(.largeTitle)
                    
                    HeaderView(titulo: "NavigationView", subtitulo: "Display Mode", description: "Se puede especificar el modo de mostrarse la barra de navegación.")

                    Spacer()
                }
                .font(.title)
                .padding(.top, 25)
            }
            .navigationTitle("Navigation Views")
            .navigationBarTitleDisplayMode(.inline)
            .ignoresSafeArea(edges: .bottom)
        }
    }
}

struct Navigation_DisplayMode_Previews: PreviewProvider {
    static var previews: some View {
        Navigation_DisplayMode()
    }
}

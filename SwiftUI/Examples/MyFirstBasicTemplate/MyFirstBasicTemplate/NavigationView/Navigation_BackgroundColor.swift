//
//  Navigation_BackgroundColor.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 04/03/22.
//

import SwiftUI

struct Navigation_BackgroundColor: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.cyan
                    .ignoresSafeArea()
                
                VStack(spacing: 25) {
                    Image(systemName: "globe")
                        .font(.largeTitle)
                    
                    HeaderView(titulo: "NavigationView", subtitulo: "Background Color", description: "Se puede tener un color extendido a lo largo de la barra de navegación.")
                    
                    Spacer()
                    
                }
                .font(.title)
                .padding(.top, 25)
                
            }
            .navigationTitle("Navigation Views")
        }
    }
}

struct Navigation_BackgroundColor_Previews: PreviewProvider {
    static var previews: some View {
        Navigation_BackgroundColor()
    }
}

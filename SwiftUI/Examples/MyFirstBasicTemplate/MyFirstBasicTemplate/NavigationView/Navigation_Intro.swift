//
//  Navigation_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 03/03/22.
//

import SwiftUI

struct Navigation_Intro: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.cyan
                
                VStack(spacing: 25) {
                    Image(systemName: "globe")
                        .font(.largeTitle)
                    
                    HeaderView(titulo: "NavigationView", subtitulo: "Introducción", description: "Teniendo NavigationView no mostrará nada a menos que se incluya también el modificador de navigationTitle.")
                    
                    Spacer()
                }
                .font(.title)
                .padding(.top, 25)
                
            }
            .navigationTitle("Navigation Views")
            .ignoresSafeArea(edges: .bottom)
        }
    }
}

struct Navigation_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Navigation_Intro()
    }
}

//
//  NavigationViewStyle_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 20/07/22.
//

import SwiftUI

struct NavigationViewStyle_Intro: View {
    var body: some View {
        NavigationView {
            
            VStack(spacing: 25) {
                Image(systemName: "globe")
                    .font(.largeTitle)
                
                Text("Introducción")
                    .font(.title)
                    .foregroundColor(.gray)
                
                NavigationLink(destination: ProfileDetail()) {
                    Text("Ir al detalle")
                }
                
                Spacer()
            }
            .padding(.top, 25)
            .navigationTitle("Estilo de Navegación")
            .background(
                Color.clear
            )
            
        }
    }
}

struct NavigationViewStyle_Intro_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewStyle_Intro()
    }
}

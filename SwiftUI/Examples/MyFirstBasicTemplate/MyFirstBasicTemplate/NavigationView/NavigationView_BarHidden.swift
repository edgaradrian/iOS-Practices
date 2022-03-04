//
//  NavigationView_BarHidden.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 04/03/22.
//

import SwiftUI

struct NavigationView_BarHidden: View {
    @State private var isHidden = true
    
    var body: some View {
        NavigationView {
            ZStack {
                
                Color.cyan
                
                VStack(spacing: 25) {
                    
                    Image(systemName: "globe")
                        .font(.largeTitle)
                    
                    HeaderView(titulo: "NavigationView", subtitulo: "Navigation Bar Hidden", description: "Para esconder una barra de navegación, se utiliza el modificador navigationBarHidden")
                    
                    Toggle("Ocultar barra de navegación", isOn: $isHidden)
                        .padding()
                    
                    Spacer()
                    
                }
                .font(.title)
                .padding(.top, 70)
                
            }
            .navigationTitle("Mi barra de navegación")
            .navigationBarHidden(isHidden)
            .ignoresSafeArea(edges: .bottom)
        }
    }
}

struct NavigationView_BarHidden_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView_BarHidden()
    }
}

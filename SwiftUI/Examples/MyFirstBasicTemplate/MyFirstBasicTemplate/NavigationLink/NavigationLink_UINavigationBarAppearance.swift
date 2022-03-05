//
//  NavigationLink_UINavigationBarAppearance.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 05/03/22.
//

import SwiftUI

struct NavigationLink_UINavigationBarAppearance: View {
    var body: some View {
        NavigationView {
            VStack {
                Divider()
                    .background(
                        Color.cyan.opacity(0.5)
                    )
                
                Spacer()
                
                HeaderView(titulo: "", subtitulo: "UINavigationBarAppearance", description: "UINavigationBarAppearance aplica un estilo/color en todas las barras de navegación")
                
                Spacer()
                
            }
            .navigationTitle("NavigationView")
            .font(.title)
            .onAppear {
                let appearance = UINavigationBarAppearance()
                
                appearance.backgroundColor = UIColor(Color.cyan.opacity(0.5))
                
                UINavigationBar.appearance().standardAppearance = appearance
                UINavigationBar.appearance().scrollEdgeAppearance = appearance
            }
        }
    }
}

struct NavigationLink_UINavigationBarAppearance_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLink_UINavigationBarAppearance()
    }
}

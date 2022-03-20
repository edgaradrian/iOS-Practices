//
//  TabView_UITabBarAppearance.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 20/03/22.
//

import SwiftUI

struct TabView_UITabBarAppearance: View {
    var body: some View {
        TabView {
            VStack(spacing: 20.0) {
                HeaderView(titulo: "TabView", subtitulo: "UITabBarAppearance", description: "Para poner a todas las pestañas un estilo y color, usar UITabBarAppearance")
            }
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            
            VStack {
                Text("Mensajes")
            }
            .tabItem {
                Image(systemName: "envelope")
                Text("Mensajes")
            }
            
        }
        .font(.title)
        .onAppear {
            let appearance = UITabBarAppearance()
            appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
            appearance.backgroundColor = UIColor(Color.cyan.opacity(0.3))
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}

struct TabView_UITabBarAppearance_Previews: PreviewProvider {
    static var previews: some View {
        TabView_UITabBarAppearance()
    }
}

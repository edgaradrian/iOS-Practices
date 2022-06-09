//
//  Background_TabViewBackground.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 09/06/22.
//

import SwiftUI

struct Background_TabViewBackground: View {
    var body: some View {
        TabView {
            VStack(spacing: 20) {
                Spacer()
                
                HeaderView(titulo: "Fondo", subtitulo: "Personalizar fondo de TabView", description: "Se utiliza el modificador de fondo para personalizar el TapView")
                
                Spacer()
                
                Divider()
                    .background(
                        Color.yellow.opacity(0.3)
                    )
                
            }
            .font(.title)
            .background(
                Color.yellow.opacity(0.1)
            )
            .tabItem {
                Image(systemName: "01.square")
                Text("Tab 1")
            }
            
            
            Text("Pestaña 2")
                .tabItem {
                    Image(systemName: "02.square")
                    Text("Tab 2")
                }
            
        }
    }
}

struct Background_TabViewBackground_Previews: PreviewProvider {
    static var previews: some View {
        Background_TabViewBackground()
    }
}

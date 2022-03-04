//
//  Navigation_NavBarItems.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 04/03/22.
//

import SwiftUI

struct Navigation_NavBarItems: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 25) {
                
                Image(systemName: "globe")
                    .font(.largeTitle)
                
                HeaderView(titulo: "NavigationView", subtitulo: "Navigation Bar Items", description: "Se pueden agregar botones de navegación para el primer orden o en último orden")
                
                Spacer()

            }
            .font(.title)
            .padding(.top, 25)
            .navigationTitle("Navegación con botones")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {}) {
                        Image(systemName: "bell.fill")
                            .padding(.horizontal)
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Actions", action: {})
                }
            }
            .tint(.cyan)
        }
        
    }
}

struct Navigation_NavBarItems_Previews: PreviewProvider {
    static var previews: some View {
        Navigation_NavBarItems()
    }
}

//
//  NavigationLink_Customization.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 05/03/22.
//

import SwiftUI

struct NavigationLink_Customization: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                HeaderView(titulo: "", subtitulo: "Personalización", description: "Se puede personalizar el NavigationLink justo cómo un botón.")
                
                NavigationLink(destination: SecondView()) {
                    Text("Navega")
                        .foregroundColor(.white)
                        .padding()
                }
                .buttonStyle(.borderedProminent)
                .tint(.cyan)
                
                NavigationLink(destination: SecondView()) {
                    HStack {
                        Text("Navegar")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    .padding()
                }
                Spacer()
                
                
            }
            .navigationTitle("NavigationLink")
        }
        .font(.title)
    }
}

struct NavigationLink_Customization_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLink_Customization()
    }
}

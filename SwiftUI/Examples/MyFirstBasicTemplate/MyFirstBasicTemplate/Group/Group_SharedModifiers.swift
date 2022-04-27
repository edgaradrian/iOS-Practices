//
//  Group_SharedModifiers.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 27/04/22.
//

import SwiftUI

struct Group_SharedModifiers: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView(titulo: "Group", subtitulo: "Atributos Compartidos", description: "Se puede usar un grupo para aplicar un modificador a todas sus vistas hijas.")
            
            Group {
                
                Image(systemName: "leaf.arrow.circlepath")
                    .font(.largeTitle)
                    .padding()
                Text("Por favor recicla")
                
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            
            Text("Notar la diferencia con un VStack:")
            
            VStack {
                Image(systemName: "leaf.arrow.circlepath")
                    .font(.largeTitle)
                    .padding()
                Text("Por favor recicla")
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            
            Text("Los modificadores son aplicados a las vistas hijas en los grupos de forma individual.")
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .font(.title)
                .padding()
                .background(Color.blue)
        }
    }
}

struct Group_SharedModifiers_Previews: PreviewProvider {
    static var previews: some View {
        Group_SharedModifiers()
    }
}

//
//  Frame_PullInToPushOut.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 16/06/22.
//

import SwiftUI

struct Frame_PullInToPushOut: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Marco", subtitulo: "Tamaños máximos", description: "Utilizando .infinity es una buena manera para cambiar las vistas que aprietan hacia dentro a que aprieten hacia afuera.")
            
            Text("Vista que empuja hacia dentro")
            Image(systemName: "arrow.right.arrow.left")
                .padding()
                .background(
                    Color.blue
                )
            
            Text("Vista que empuja hacia afuera")
            Image(systemName: "arrow.right.arrow.left")
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(
                    Color.blue
                )
            
        }
        .font(.title)
        .foregroundColor(.white)
    }
}

struct Frame_PullInToPushOut_Previews: PreviewProvider {
    static var previews: some View {
        Frame_PullInToPushOut()
    }
}

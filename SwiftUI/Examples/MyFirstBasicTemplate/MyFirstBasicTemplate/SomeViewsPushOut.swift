//
//  SomeViewsPushOut.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 09/02/22.
//

import SwiftUI

struct SomeViewsPushOut: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Layout Behavior")
            
            Text("Vistas que empujan hacia afuera")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("Algunas vistas empujan hacia afuera para llenar todo el espacio disponible de su vista contenedora")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(.purple)
            
            Color.yellow
                .overlay(
                    Image(systemName: "arrow.up.left")
                        .padding()
                    , alignment: .topLeading
                )
                .overlay(
                    Image(systemName: "arrow.up.right")
                        .padding()
                    , alignment: .topTrailing
                )
                .overlay(
                    Image(systemName: "arrow.down.left")
                        .padding()
                    , alignment: .bottomLeading
                )
                .overlay(
                    Image(systemName: "arrow.down.right")
                        .padding()
                    , alignment: .bottomTrailing
                )
                .overlay(
                    Text("Colors son vistas empujadoras")
                )
            
            
        }
        .font(.largeTitle)
    }
}

struct SomeViewsPushOut_Previews: PreviewProvider {
    static var previews: some View {
        SomeViewsPushOut()
    }
}

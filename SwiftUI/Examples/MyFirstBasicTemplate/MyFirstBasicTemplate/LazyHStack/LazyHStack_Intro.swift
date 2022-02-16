//
//  LazyHStack_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 15/02/22.
//

import SwiftUI

struct LazyHStack_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "LazyHStack", subtitulo: "Introduction", description: "Cuando se usa LazyHStack, no se notará mucha diferencia con respecto a HStack")
                .layoutPriority(1)
            
            Text("LazyHStack")
            LazyHStack(spacing: 40) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(Color.red, width: 2)
            
            Text("HStack")
            HStack(spacing: 40) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(Color.red, width: 2)
            
            Text("Notar que LazyHStack empuja verticalmente. Ningún spacers está siendo usado aquí.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(
                    Color.yellow
                )
                .foregroundColor(.black)
            
        }
        .font(.title)
    }
}

struct LazyHStack_Intro_Previews: PreviewProvider {
    static var previews: some View {
        LazyHStack_Intro()
    }
}

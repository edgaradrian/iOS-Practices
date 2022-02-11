//
//  LazyVStack_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 11/02/22.
//

import SwiftUI

struct LazyVStack_Intro: View {
    var body: some View {
        
        VStack(spacing: 10) {
            
            HeaderView(titulo: "LazyVStack", subtitulo: "Introducción", description: "Cuando usas el LazyVStack por sí mismo, tú no notarás mucho con respecto de VStack")
                .layoutPriority(1)
            
            Text("LazyVStack")
            LazyVStack(spacing: 10) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(Color.red, width: 2)
            
            Text("VStack")
            VStack(spacing: 10) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(Color.red, width: 2)
            
            Text("Notar que LazyVStack empuja horizontalmente")
            
        }
        .font(.title)
    }
}

struct LazyVStack_Intro_Previews: PreviewProvider {
    static var previews: some View {
        LazyVStack_Intro()
    }
}

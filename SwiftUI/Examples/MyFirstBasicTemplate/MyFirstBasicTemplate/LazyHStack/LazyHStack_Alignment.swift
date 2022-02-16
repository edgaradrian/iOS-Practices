//
//  LazyHStack_Alignment.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 15/02/22.
//

import SwiftUI

struct LazyHStack_Alignment: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "LazyHStack", subtitulo: "Alignment", description: "Como LazyHStacks empujan verticalmente, el parámetro de alineado puede ayudar.")
                .layoutPriority(1)
            
            Text("Top")
            
            LazyHStack(alignment: .top, spacing: 40) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .padding()
            .border(Color.red, width: 2)
            
            Text("Bottom")
            
            LazyHStack(alignment: .bottom, spacing: 40) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .padding()
            .border(Color.red, width: 2)
            
        }
        .font(.title)
    }
}

struct LazyHStack_Alignment_Previews: PreviewProvider {
    static var previews: some View {
        LazyHStack_Alignment()
    }
}

//
//  LazyVStack_Alignment.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 11/02/22.
//

import SwiftUI

struct LazyVStack_Alignment: View {
    var body: some View {
        VStack(spacing: 10.0) {
            
            HeaderView(titulo: "LazyVStack", subtitulo: "Alineación", description: "Porque LazyVStacks se extiran horizontalmente el parámetro de alineado puede servir.")
            
            Text("Leading")
            
            LazyVStack(alignment: .leading, spacing: 40) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(Color.red, width: 2)
            
            Text("Trailing")
            
            LazyVStack(alignment: .trailing, spacing: 40) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(Color.red, width: 2)
            
        }
        .font(.title)
    }
}

struct LazyVStack_Alignment_Previews: PreviewProvider {
    static var previews: some View {
        LazyVStack_Alignment()
    }
}

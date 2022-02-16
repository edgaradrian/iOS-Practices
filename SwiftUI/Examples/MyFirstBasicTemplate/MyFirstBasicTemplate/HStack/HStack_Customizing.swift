//
//  HStack_Customizing.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 15/02/22.
//

import SwiftUI

struct HStack_Customizing: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "HStack", subtitulo: "Customizing", description: "Los HStacks son vista que pueden modificarse como las otras vistas")
            
            HStack {
                Text("Leading")
                Text("Middle")
                Text("Trailing")
            }
            .padding()
            .border(Color.orange)
            
            HStack(spacing: 10) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .padding()
            
            HStack(spacing: 20) {
                Image(systemName: "a.circle.fill")
                Image(systemName: "b.circle.fill")
                Image(systemName: "c.circle.fill")
                Image(systemName: "d.circle.fill")
                Image(systemName: "e.circle.fill")
            }
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.orange)
            )
            
            
        }
        .font(.title)
    }
}

struct HStack_Customizing_Previews: PreviewProvider {
    static var previews: some View {
        HStack_Customizing()
    }
}

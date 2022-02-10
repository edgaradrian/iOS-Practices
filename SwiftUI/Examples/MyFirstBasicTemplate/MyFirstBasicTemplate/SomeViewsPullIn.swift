//
//  SomeViewsPullIn.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 09/02/22.
//

import SwiftUI

struct SomeViewsPullIn: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Layout Behavior")
                .font(.largeTitle)
            
            Text("Views that Pull in")
                .foregroundColor(.gray)
            
            Text("algunas vistas minimizan el tamaño de su marco pero solo tan grande como su contenido adentro.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(.purple)
                .foregroundColor(.white)
            
            Image(systemName: "arrow.down.to.line.alt")
            
            HStack {
                Image(systemName: "arrow.right.to.line.alt")
                Text("Text views pull in")
                Image(systemName: "arrow.left.to.line.alt")
            }
            
            Image(systemName: "arrow.up.to.line.alt")
            
            Text("Pull-In views tienden a centrarse solas dentro de su vista contenedora")
                .frame(maxWidth: .infinity)
                .padding()
                .background(.purple)
                .foregroundColor(.white)
            
        }
        .font(.title)
    }
}

struct SomeViewsPullIn_Previews: PreviewProvider {
    static var previews: some View {
        SomeViewsPullIn()
    }
}

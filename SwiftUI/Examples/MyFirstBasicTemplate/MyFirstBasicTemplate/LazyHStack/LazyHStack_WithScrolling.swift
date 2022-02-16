//
//  LazyHStack_WithScrolling.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 15/02/22.
//

import SwiftUI

struct LazyHStack_WithScrolling: View {
    
    @State private var whatAppeared = ""
    
    var body: some View {
        VStack(spacing: 10) {
            
            HeaderView(titulo: "LazyHStack", subtitulo: "With Scrollview", description: "LazyHStack es mejor usado con muchas vistas con scroll fuera de la pantalla")
            
            Spacer()
            
            ScrollView(.horizontal, showsIndicators: true) {
                LazyHStack(spacing: 20) {
                    ForEach(0 ..< 51) { item in
                        Image(systemName: "\(item).circle")
                            .onAppear {
                                whatAppeared = "\(item).circle"
                            }
                    }
                }
            }
            .font(.largeTitle)
            .padding()
            
            Text("\(whatAppeared)")
            
            Spacer()
        }
    }
}

struct LazyHStack_WithScrolling_Previews: PreviewProvider {
    static var previews: some View {
        LazyHStack_WithScrolling()
    }
}

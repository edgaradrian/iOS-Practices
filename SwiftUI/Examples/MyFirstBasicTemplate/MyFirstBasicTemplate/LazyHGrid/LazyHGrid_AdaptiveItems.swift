//
//  LazyHGrid_AdaptiveItems.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 22/02/22.
//

import SwiftUI

struct LazyHGrid_AdaptiveItems: View {
    var body: some View {
        VStack(spacing: 15) {
            
            HeaderView(titulo: "LazyHGrid", subtitulo: "Adaptive Height", description: "Permite a los artículos en el LazyHGrid decidir cuantas filas necesitan a tráves del GridItem. Este ejemplo sólo usa un GridItem")
            
            Text("Height Range: 20 to 60")
            
            let rows = [GridItem(.adaptive(minimum: 20, maximum: 60))]
            
            LazyHGrid(rows: rows) {
                ForEach(1 ..< 21) { item in
                    Color.green.frame(width: 50)
                }
                Image(systemName: "arrow.right.circle")
            }
            .padding(.bottom)
            
            
        }
        .font(.title)
    }
}

struct LazyHGrid_AdaptiveItems_Previews: PreviewProvider {
    static var previews: some View {
        LazyHGrid_AdaptiveItems()
    }
}

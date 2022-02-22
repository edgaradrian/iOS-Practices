//
//  LazyHGrid_FlexibleHeight.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 21/02/22.
//

import SwiftUI

struct LazyHGrid_FlexibleHeight: View {
    var body: some View {
        VStack(spacing: 15) {
            
            HeaderView(titulo: "LazyHGrid", subtitulo: "Flexible Height", description: "El GridItem puede tener una altura flexible")
            
            Text("Top row flex: 50 to 60")
            Text("Bottom row Flex: 20 to 40")
            
            let rows = [GridItem(.flexible(minimum: 50, maximum: 60)),
                        GridItem(.flexible(minimum: 20, maximum: 40))]
            
            LazyHGrid(rows: rows) {
                ForEach(1 ..< 11) { item in
                    Color.green.frame(width: 50)
                }
            }
            Spacer()
            Text("Top row Flex: 10 to 20")
            Text("Bottom Row Flex: 20 to 40")
            
            let rows2 = [GridItem(.flexible(minimum: 10, maximum: 20)), GridItem(.flexible(minimum: 20, maximum: 40))]
            LazyHGrid(rows: rows2) {
                ForEach(1 ..< 11) { item in
                    Color.green.frame(width: 50)
                }
            }
            
        }
        .font(.title)
    }
}

struct LazyHGrid_FlexibleHeight_Previews: PreviewProvider {
    static var previews: some View {
        LazyHGrid_FlexibleHeight()
    }
}

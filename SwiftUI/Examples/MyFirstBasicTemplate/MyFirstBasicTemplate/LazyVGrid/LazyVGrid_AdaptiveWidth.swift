//
//  LazyVGrid_AdaptiveWidth.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 22/02/22.
//

import SwiftUI

struct LazyVGrid_AdaptiveWidth: View {
    var body: some View {
        VStack(spacing: 15) {
            
            HeaderView(titulo: "LazyvGrid", subtitulo: "Adaptive Width", description: "Permite a los artículos en el LazyVGrid decidir cuántos columnas necesita a través del GridItem.")
            
            Text("Width Range: de 20 a 60")
            
            let columns = [GridItem(.adaptive(minimum: 20, maximum: 60))]
            
            LazyVGrid(columns: columns) {
                ForEach(1 ..< 41) { item in
                    Color.green.frame(height: 50)
                }
                Image(systemName: "arrow.down.circle")
            }
            .padding(.bottom)
            
        }
        .font(.title)
    }
}

struct LazyVGrid_AdaptiveWidth_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGrid_AdaptiveWidth()
    }
}

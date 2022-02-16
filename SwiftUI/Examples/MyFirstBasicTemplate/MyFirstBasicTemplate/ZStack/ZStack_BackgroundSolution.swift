//
//  ZStack_BackgroundSolution.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 16/02/22.
//

import SwiftUI

struct ZStack_BackgroundSolution: View {
    var body: some View {
        ZStack {
            
            Color.gray
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("ZStack")
                    .font(.largeTitle)
                
                Text("Color Ignores Safe Area Edges")
                    .foregroundColor(.white)
                
                Text("El problema se resuelve agregando ignoresSafeArea al color")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(
                        Color.yellow
                    )
                
            }
            .font(.title)
        }
    }
}

struct ZStack_BackgroundSolution_Previews: PreviewProvider {
    static var previews: some View {
        ZStack_BackgroundSolution()
    }
}

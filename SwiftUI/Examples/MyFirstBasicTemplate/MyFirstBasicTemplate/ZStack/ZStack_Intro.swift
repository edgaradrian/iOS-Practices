//
//  ZStack_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 15/02/22.
//

import SwiftUI

struct ZStack_Intro: View {
    var body: some View {
        ZStack {
            
            Color.gray
            
            VStack(spacing: 20) {
                
                Text("ZStack")
                    .font(.largeTitle)
                
                Text("Introducción")
                    .foregroundColor(.white)
                
                Text("ZStacks son genial para poner un color de fondo")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                
                Text("Notar que los colores se detienen en las areas seguras")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                
            }
            .font(.title)
            
        }
    }
}

struct ZStack_Intro_Previews: PreviewProvider {
    static var previews: some View {
        ZStack_Intro()
    }
}

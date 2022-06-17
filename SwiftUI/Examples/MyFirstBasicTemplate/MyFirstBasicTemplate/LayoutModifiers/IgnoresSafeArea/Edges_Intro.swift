//
//  Edges_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 16/06/22.
//

import SwiftUI

struct Edges_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Ignorando el área segura.")
                .padding()
                .font(.largeTitle)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .padding(.top, 50)
                .background(
                    Color.blue
                )
            
            Text("Introducción")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("El color del cabecero se extiende más allá del ´rea segura")
                .frame(maxWidth: .infinity)
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Color.blue
                    )
            
            Spacer()
            
        }
        .ignoresSafeArea(edges: .top)
    }
}

struct Edges_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Edges_Intro()
    }
}

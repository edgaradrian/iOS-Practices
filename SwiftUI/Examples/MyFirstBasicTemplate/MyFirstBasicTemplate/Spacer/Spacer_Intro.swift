//
//  Spacer_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 16/02/22.
//

import SwiftUI

struct Spacer_Intro: View {
    var body: some View {
        VStack {
            Text("Spacer")
                .font(.largeTitle)
            
            Text("Introducción")
                .foregroundColor(.gray)
            
            Text("Spacers empujan las cosas verticalmente u horizontalmente")
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .padding()
                .background(
                    Color.yellow
                )
            
            Image(systemName: "arrow.up.circle.fill")
            
            Spacer()
            
            Image(systemName: "arrow.down.circle.fill")
            
            HStack {
                Text("Horizontal Spacer")
                
                Image(systemName: "arrow.left.circle.fill")
                
                Spacer()
                
                Image(systemName: "arrow.right.circle.fill")
                
            }
            .padding(.horizontal)
            
            Color.yellow
                .frame(maxHeight: 50)
            
        }
        .font(.title)
    }
}

struct Spacer_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Spacer_Intro()
    }
}

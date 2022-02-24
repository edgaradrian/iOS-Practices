//
//  Button_WithSFSymbols.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 24/02/22.
//

import SwiftUI

struct Button_WithSFSymbols: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Button", subtitulo: "With SF Symbols", description: "Buttons can be composed with SF Symbols too.")
            
            Button(action: {}) {
                Text("Button With Symbol")
                    .padding(.horizontal)
                Image(systemName: "gift.fill")
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(8)
            
            Button(action: {}) {
                Image(systemName: "magnifyingglass")
                Text("Search")
                    .padding(.horizontal)
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(8)
            
            Button(action: {}) {
                VStack {
                    Image(systemName: "video.fill")
                    Text("Record")
                        .padding(.horizontal)
                }
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(.infinity)
            
        }
        .font(.title)
    }
}

struct Button_WithSFSymbols_Previews: PreviewProvider {
    static var previews: some View {
        Button_WithSFSymbols()
    }
}

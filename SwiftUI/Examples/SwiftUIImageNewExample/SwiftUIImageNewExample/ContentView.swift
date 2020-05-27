//
//  ContentView.swift
//  SwiftUIImageNewExample
//
//  Created by Edgar Adrián on 27/05/20.
//  Copyright © 2020 Edgar Adrián. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("Chimalli")
        .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300)
        .clipShape(Circle())
            .opacity(0.5)
        .overlay(
            
            Text("Chimalli - Lugar de los que tienen escudos")
                .fontWeight(.heavy)
                .font(.system(.headline, design: .rounded))
                .foregroundColor(.white)
            .padding()
                .background(Color.black)
                .cornerRadius(10)
                .opacity(0.7)
            .padding(),
            
            alignment: .top
        )
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

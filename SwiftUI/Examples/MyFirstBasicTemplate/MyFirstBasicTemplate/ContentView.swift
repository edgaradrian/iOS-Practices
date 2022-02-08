//
//  ContentView.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 08/02/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Título")
                .font(.largeTitle)
            
            Text("Subtítulo")
                .font(.title)
                .foregroundColor(Color.gray)
            
            Text("Pequeña descripción de lo que quiero demostrar va aquí.")
                .frame(maxWidth: .infinity)
                .font(.title)
                .foregroundColor(.white)
                .background(Color.blue)
            
        }//VStack
    }//body
}//ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

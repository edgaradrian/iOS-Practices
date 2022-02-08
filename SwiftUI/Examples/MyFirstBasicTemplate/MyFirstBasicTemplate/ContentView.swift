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
            
            Text("Imágenes")
                .font(.largeTitle)
            
            Text("Usando SF Symbols")
                .foregroundColor(Color.gray)
            
            Text("Se mostrarán los siguientes simbolos para dar mayor claridad. Estos simbolos son dueños de la manzana.")
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
            
            Image(systemName: "hand.thumbsup.fill")
                .font(.largeTitle)
            
            Image("SF Symbols")
                .resizable()
            
        }
        .font(.title)
        .ignoresSafeArea(edges: .bottom)
    }//body
}//ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

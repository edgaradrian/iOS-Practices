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
            
            HeaderView(titulo: "Título", subtitulo: "Subtítulo", description: "Pequeña descripción de lo que quiero demostrar aquí")
            
        }//VStack
    }//body
}//ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

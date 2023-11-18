//
//  ContentView.swift
//  SwiftUIScrollViewExample
//
//  Created by Edgar Adrián on 17/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                CardView(image: "swiftui-button", category: "SwiftUI", heading: "Dibujando un borde con esquinas redondeadas", author: "Por Edgar Adrián")
                
                CardView(image: "macos-programming", category: "macOS", heading: "Construyendo una app de edición simple", author: "Por Edgar Adrián")
                
                CardView(image: "flutter-app", category: "Flutter", heading: "Construyendo un complejo diseño con FLutter", author: "Por Edgar Adrián")
                
                CardView(image: "natural-language-api", category: "iOS", heading: "¿Qué hay de nuevo con la API?", author: "Por Edgar Adrián")
            }
        }
    }
}

#Preview {
    ContentView()
}

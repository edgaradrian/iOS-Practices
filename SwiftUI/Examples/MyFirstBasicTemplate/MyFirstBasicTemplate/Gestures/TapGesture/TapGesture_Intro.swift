//
//  TapGesture_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 27/07/22.
//

import SwiftUI

struct TapGesture_Intro: View {
    
    @State private var hasDoubledTapped = false
    @State private var hasTripleTapped = false
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Gestos", subtitulo: "Gesto de pulso", description: "El gesto de pulso hace a las vistas como botones. Se puede saber cuántas veces se pulsó.")
            
            Text("Pulsa dos veces para abrir el sobre.")
            
            Image(systemName: hasDoubledTapped ? "envelope.open.fill" : "envelope.fill")
                .font(.system(size: 100))
                .padding()
                .foregroundColor(hasTripleTapped ? .red : .blue)
                .onTapGesture(count: 2) {
                    self.hasDoubledTapped.toggle()
                }
        }
        .font(.title)
    }
}

struct TapGesture_Intro_Previews: PreviewProvider {
    static var previews: some View {
        TapGesture_Intro()
    }
}

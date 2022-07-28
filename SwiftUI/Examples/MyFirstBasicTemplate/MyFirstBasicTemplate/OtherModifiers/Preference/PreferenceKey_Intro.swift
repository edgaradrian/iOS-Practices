//
//  PreferenceKey_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 28/07/22.
//

import SwiftUI

struct PreferenceKey_Intro: View {
    var body: some View {
        
        ScrollView {
            
            VStack(spacing: 20) {
                HeaderView(titulo: "Llave de Preferencia", subtitulo: "Introducción", description: "Una llave de preferencias personalizada es para ser utilizada en las preferencias del modificador.")
                
                HStack {
                    Text("Lecha Conasupo:")
                    Text("$22.00")
                        .preference(key: CustomPreferenceKey.self, value: 22.00)
                }
                
                HStack {
                    Text("Frijoles:")
                    Text("$32.50")
                        .preference(key: CustomPreferenceKey.self, value: 32.50)
                }
                
            }
            .font(.title)
            
        }
        
    }
}

struct CustomPreferenceKey: PreferenceKey {
    static var defaultValue = 0.0
    static func reduce(value: inout Double, nextValue: () -> Double) {
        value = value + nextValue()
    }
}

struct PreferenceKey_Intro_Previews: PreviewProvider {
    static var previews: some View {
        PreferenceKey_Intro()
    }
}

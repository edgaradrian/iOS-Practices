//
//  OnPreferenceChange_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 28/07/22.
//

import SwiftUI

struct OnPreferenceChange_Intro: View {
    
    @State private var total = 0.0
    
    var body: some View {
        ScrollView {
            
            VStack(spacing: 20) {
                HeaderView(titulo: "Cambio en Llave de Preferencia", subtitulo: "Introducción", description: "Se puede utilizar el modificador onPreferenceChange para poner el valor de una variable local cada vez que cambie .")
                
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
                
                Text("Total: $\(Int(total))")
                    .bold()
                
            }
            .font(.title)
            .onPreferenceChange(CustomPreferenceKey.self) { value in
                total = value
            }
            
        }
    }
}

struct OnPreferenceChange_Intro_Previews: PreviewProvider {
    static var previews: some View {
        OnPreferenceChange_Intro()
    }
}

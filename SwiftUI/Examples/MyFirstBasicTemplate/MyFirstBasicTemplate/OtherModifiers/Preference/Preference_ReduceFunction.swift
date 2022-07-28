//
//  Preference_ReduceFunction.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 28/07/22.
//

import SwiftUI

struct Preference_ReduceFunction: View {
    @State private var highestValue = 0
    
    var body: some View {
        ScrollView {
            
            VStack(spacing: 20) {
                
                HeaderView(titulo: "Preferencia", subtitulo: "Función Reducir", description: "Con la función de reducir se administran múltiples valores de preferencia.")
                
                HStack {
                    ForEach(4 ..< 9) { item in
                        Image(systemName: "\(item).circle")
                            .preference(key: GetHighestValue.self, value: item)
                    }
                }
                .onPreferenceChange(GetHighestValue.self) { value in
                    highestValue = value
                }
                
                Text("Número más alto: \(highestValue)")
                    .font(.title2)
                
            }
            .font(.title)
            
        }
    }
}//Preference_ReduceFunction

struct GetHighestValue: PreferenceKey {
    
    static var defaultValue = 0
    
    static func reduce(value: inout Int, nextValue: () -> Int) {
        value = value > nextValue() ? value : nextValue()
    }
    
}//GetHighestValue

struct Preference_ReduceFunction_Previews: PreviewProvider {
    static var previews: some View {
        Preference_ReduceFunction()
    }
}

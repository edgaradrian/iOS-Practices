//
//  PickerStyle_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 20/07/22.
//

import SwiftUI

struct PickerStyle_Intro: View {
    
    @State private var selection = 1
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                HeaderView(titulo: "Estilo de Selector", subtitulo: "Introducción", description: "Se puede usar un estilo de selector tipo rueda o tipo segmento.")
                
                Text("Estilo de selector Automático")
                Picker(selection: $selection) {
                    Text("Distrito Federal").tag(0)
                    Text("Estado de México").tag(1)
                    Text("Morelos").tag(2)
                } label: {
                    Text("")
                }
                .pickerStyle(.automatic)

                Text("Estilo de selector Rueda")
                Picker(selection: $selection) {
                    Text("Distrito Federal").tag(0)
                    Text("Estado de México").tag(1)
                    Text("Morelos").tag(2)
                } label: {
                    Text("")
                }
                .pickerStyle(.wheel)
             
                
                Text("Estilo de selector segmento")
                Picker(selection: $selection) {
                    Text("Distrito Federal").tag(0)
                    Text("Estado de México").tag(1)
                    Text("Morelos").tag(2)
                } label: {
                    Text("")
                }
                .pickerStyle(.segmented)
                
            }
        }
    }
}

struct PickerStyle_Intro_Previews: PreviewProvider {
    static var previews: some View {
        PickerStyle_Intro()
    }
}

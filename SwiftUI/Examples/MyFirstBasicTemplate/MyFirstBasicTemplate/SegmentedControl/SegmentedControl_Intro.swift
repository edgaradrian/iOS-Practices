//
//  SegmentedControl_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 14/03/22.
//

import SwiftUI

struct SegmentedControl_Intro: View {
    @State private var dayNight = "día"
    @State private var tab = 1
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Segmented Control (Picker)", subtitulo: "Introducción", description: "Asociar el segmento de control con una variable @State que controla el segmento con que es seleccionado. La variable @State coincidirá con un valor de etiqueta del segmento.")
            
            Picker("", selection: $dayNight) {
                Text("Día").tag("día")
                Text("Noche").tag("noche")
            }
            .pickerStyle(.segmented)
            .padding()
            
            Picker("", selection: $tab) {
                Image(systemName: "sun.min").tag(0)
                Image(systemName: "moon").tag(1)
            }
            .pickerStyle(.segmented)
            .padding()
            
        }
    }
}

struct SegmentedControl_Intro_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControl_Intro()
    }
}

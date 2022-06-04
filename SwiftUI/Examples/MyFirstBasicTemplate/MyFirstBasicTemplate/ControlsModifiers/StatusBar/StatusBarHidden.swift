//
//  StatusBarHidden.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 03/06/22.
//

import SwiftUI

struct StatusBarHidden: View {
    
    @State private var isOn = true
    
    var body: some View {
        VStack(spacing: 40) {
            
            HeaderView(titulo: "Barra de estatus oculta", subtitulo: "Introducción", description: "Se puede usar el modificador statusBar para ocultar o mostrar la barra de estatus.")
            
            Toggle(isOn: $isOn) {
                Text("Ocultar barra de estatus")
                Image(systemName: isOn ? "eye.slash" : "eye")
                    .foregroundColor(.blue)
            }
            .padding()
            
        }
        .font(.title)
        .statusBar(hidden: isOn)
    }
}

struct StatusBarHidden_Previews: PreviewProvider {
    static var previews: some View {
        StatusBarHidden()
    }
}

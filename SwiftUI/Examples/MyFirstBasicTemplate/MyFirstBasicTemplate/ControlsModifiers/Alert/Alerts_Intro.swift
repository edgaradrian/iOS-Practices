//
//  Alerts_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 30/05/22.
//

import SwiftUI

struct Alerts_Intro: View {
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            HeaderView(titulo: "Alertas", subtitulo: "Introducción", description: "El modificador de alerta puede mostrar un mensaje de alerta cuando cambie su variable ligada.")
            
            Button {
                self.showAlert = true
            } label: {
                Text("Mostrar alerta")
            }
            
            Spacer()

        }
        .font(.title)
        .alert(Text("Alerta"), isPresented: $showAlert) {
            //no action
        }
    }
}

struct Alerts_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Alerts_Intro()
    }
}

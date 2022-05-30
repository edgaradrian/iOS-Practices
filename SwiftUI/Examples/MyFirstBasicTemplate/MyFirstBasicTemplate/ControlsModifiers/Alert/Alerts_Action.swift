//
//  Alerts_Action.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 30/05/22.
//

import SwiftUI

struct Alerts_Action: View {
    
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            HeaderView(titulo: "Alertas", subtitulo: "Acciones", description: "Agregar acciones a los botones en la alerta.")
            
            Button {
                self.showAlert = true
            } label: {
                Text("Mostrar alerta")
            }

            Spacer()
            
        }
        .font(.title)
        .alert("¿Borrar contacto?", isPresented: $showAlert) {
            Button(role: .destructive) {
                //No action
            } label: {
                Text("Borrar")
            }

        } message: {
            Text("Se borrará de forma permanente el contacto.")
        }

    }
}

struct Alerts_Action_Previews: PreviewProvider {
    static var previews: some View {
        Alerts_Action()
    }
}

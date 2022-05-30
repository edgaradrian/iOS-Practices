//
//  Alerts_Message.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 30/05/22.
//

import SwiftUI

struct Alerts_Message: View {
    
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            HeaderView(titulo: "Alertas", subtitulo: "Mensaje", description: "Se puede agregar un mensaje para que se muestre en la alerta.")
            
            Button {
                self.showAlert = true
            } label: {
                Text("Mostrar alerta")
            }
            
            Spacer()

        }
        .font(.title)
        .alert("¡Felicitaciones!", isPresented: $showAlert) {
            //No action
        } message: {
            Text("Tu viaje ha sido agendado")
        }

    }
}

struct Alerts_Message_Previews: PreviewProvider {
    static var previews: some View {
        Alerts_Message()
    }
}

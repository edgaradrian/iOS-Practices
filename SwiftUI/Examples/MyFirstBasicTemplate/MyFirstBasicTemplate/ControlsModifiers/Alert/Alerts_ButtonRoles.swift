//
//  Alerts_ButtonRoles.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 30/05/22.
//

import SwiftUI

struct Alerts_ButtonRoles: View {
    
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            HeaderView(titulo: "Aletas", subtitulo: "Roles de botones", description: "Usando los roles en los botones se pueden sobreescribir los usos por defecto.")
            
            Button {
                self.showAlert = true
            } label: {
                Text("Mostrar alerta")
            }
            
            Spacer()
        }
        .font(.title)
        .alert("¡Felicitaciones!", isPresented: $showAlert) {
            Button(role: .destructive) {
                //No action
            } label: {
                Text("Deshacer")
            }
            
            Button(role: .cancel) {
                //No action
            } label: {
                Text("OK")
            }


        } message: {
            Text("Tu viaje ha sido agendado")
        }

        
    }
}

struct Alerts_ButtonRoles_Previews: PreviewProvider {
    static var previews: some View {
        Alerts_ButtonRoles()
    }
}

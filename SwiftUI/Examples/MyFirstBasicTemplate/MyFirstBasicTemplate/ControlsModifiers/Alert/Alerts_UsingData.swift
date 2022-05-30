//
//  Alerts_UsingData.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 30/05/22.
//

import SwiftUI

struct ResultDetails {
    let message: String
    let action: String
}

struct Alerts_UsingData: View {
    
    @State private var didError = false
    @State private var resultDetails: ResultDetails?
    
    var body: some View {
        VStack {
            HeaderView(titulo: "Alertas", subtitulo: "Usando información", description: "Pasar información por el parámetro presenting")
            
            Button {
                self.didError = true
                self.resultDetails = ResultDetails(message: "Proceso fallado.", action: "Reintentar")
            } label: {
                Text("Comenzar proceso")
            }

            Spacer()

        }
        .font(.title)
        .alert("Resultados", isPresented: $didError, presenting: resultDetails) { details in
            Button(details.action) { }
            Button("Cancelar", role: .cancel, action: {})
        } message: { details in
            Text("\(details.message)")
        }

    }
}

struct Alerts_UsingData_Previews: PreviewProvider {
    static var previews: some View {
        Alerts_UsingData()
    }
}

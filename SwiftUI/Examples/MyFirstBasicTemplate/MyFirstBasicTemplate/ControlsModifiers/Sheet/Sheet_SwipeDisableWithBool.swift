//
//  Sheet_SwipeDisableWithBool.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 03/06/22.
//

import SwiftUI

struct Sheet_SwipeDisableWithBool: View {
    
    @State private var presentingSheet = false
    
    var body: some View {
        Button("Mostrar modal") {
            self.presentingSheet = true
        }
        .sheet(isPresented: $presentingSheet) {
            AgreementView(title: "Hoja", subtitle: "Deslizamiento activado con un boleano.")
        }
        .font(.title)
    }
}

struct Sheet_SwipeDisableWithBool_Previews: PreviewProvider {
    static var previews: some View {
        Sheet_SwipeDisableWithBool()
    }
}

struct AgreementView: View {
    
    let title: String
    let subtitle: String
    @State private var agree = false
    
    var body: some View {
        
        VStack(spacing: 20) {
            HeaderView(titulo: title, subtitulo: subtitle, description: "Para habilitar y deshabilitar el deslizamiento hacia abajo con interactiveDismissDisabled y un boleano.")
            
            Spacer()
            
            Toggle(isOn: $agree) {
                Text("Acepto")
            }
            .toggleStyle(.button)
            .tint(.blue)
            .padding()
            
        }
        .interactiveDismissDisabled(!agree)
        
    }
    
    
}//AgreementView

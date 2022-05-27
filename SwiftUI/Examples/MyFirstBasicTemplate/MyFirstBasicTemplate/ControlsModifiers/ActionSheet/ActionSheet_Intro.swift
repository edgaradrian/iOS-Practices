//
//  ActionSheet_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 27/05/22.
//

import SwiftUI

struct ActionSheet_Intro: View {
    @State private var presentingActionSheet = false
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "ActionSheet", subtitulo: "Introducción", description: "La vista de ActionSheet contiene todos los objetos de un ActionSheet para ser mostrados.")
            
            Button {
                self.presentingActionSheet = true
            } label: {
                Text("Mostrar ActionSheet")
                    .foregroundColor(.gray)
            }

        }
        .font(.title)
        .actionSheet(isPresented: $presentingActionSheet) {
            ActionSheet(title: Text("Título de Action Sheet"),
                        message: Text("Mensaje de Action Sheet"),
                        buttons: [
                            .default(Text("Botón por defecto")),
                            .destructive(Text("Botón destructivo"), action: {
                                //Acciones destructivas
                            }),
                            .cancel()
                        ])
        }
    }
}

struct ActionSheet_Intro_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheet_Intro()
    }
}

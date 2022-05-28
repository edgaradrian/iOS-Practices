//
//  ActionSheet_Buttons.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 27/05/22.
//

import SwiftUI

var myActionSheet = ActionSheet(title: Text("Título Action Sheet"),
                              buttons: [
                                .default(Text("Botón por defecto")
                                    .font(.title)
                                    .foregroundColor(.pink),
                                         action: {
                                             //Action ActionSheet
                                         }),
                                .destructive(Text("Botón de destrucción"), action: {
                                    //Action botón de destrucción
                                }),
                                .cancel(Text("Adiós amigo"),
                                        action: {
                                            // Acción de botón de cancelado
                                        })
                              ])

struct ActionSheet_Buttons: View {
    
    @State private var presentingActionSheet = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "ActionSheet", subtitulo: "Buttons", description: "Los botones no son personalizables. Se puede usar el texto pero no se puede modificar.")
            
            Button {
                self.presentingActionSheet = true
            } label: {
                Text("Mostrar ActionSheet")
                    .foregroundColor(.gray)
            }

            Spacer()
            
        }
        .font(.title)
        .actionSheet(isPresented: $presentingActionSheet) {
           myActionSheet
        }
        
    }
}

struct ActionSheet_Buttons_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheet_Buttons()
    }
}

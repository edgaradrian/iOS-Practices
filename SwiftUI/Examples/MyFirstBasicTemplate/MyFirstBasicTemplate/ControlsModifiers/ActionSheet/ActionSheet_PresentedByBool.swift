//
//  ActionSheet_PresentedByBool.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 27/05/22.
//

import SwiftUI

struct ActionSheet_PresentedByBool: View {
    
    @State private var presentingActionSheet = false
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "ActionSheet", subtitulo: "Presentado por un booleano", description: "Dependiendo del cambio de la variable se muestra o no la ActionSheet")
            
            Button {
                self.presentingActionSheet = true
            } label: {
                Text("Mostrar ActionSheet")
                    .foregroundColor(.gray)
            }

            
        }
        .font(.title)
        .actionSheet(isPresented: $presentingActionSheet) {
            ActionSheet(title: Text("Mi Primer ActionSheet"))
        }
    }
}

struct ActionSheet_PresentedByBool_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheet_PresentedByBool()
    }
}

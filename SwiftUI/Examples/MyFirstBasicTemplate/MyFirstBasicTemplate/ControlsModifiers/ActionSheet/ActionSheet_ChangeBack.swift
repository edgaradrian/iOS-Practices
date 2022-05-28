//
//  ActionSheet_ChangeBack.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 27/05/22.
//

import SwiftUI

struct ActionSheet_ChangeBack: View {
    @State private var presentingActionSheet = false
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "ActionSheet", subtitulo: "SwiftUI devuelve el valor original", description: "SwiftUI cambiará automáticamente la propiedad para poner la variable del ActionSheet al valor original.")
            
            Button {
                self.presentingActionSheet = true
            } label: {
                Text("Mostrar el ActionSheet")
                    .foregroundColor(.gray)
            }

            Text("presentingActionSheet: ") +
            Text(self.presentingActionSheet.description).bold()
            
            
        }
        .font(.title)
        .actionSheet(isPresented: $presentingActionSheet) {
            ActionSheet(title: Text("Revisa el boleano."))
        }
    }
}

struct ActionSheet_ChangeBack_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheet_ChangeBack()
    }
}

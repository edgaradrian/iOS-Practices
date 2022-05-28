//
//  ActionSheet_PassDataInto.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 27/05/22.
//

import SwiftUI

struct ActionSheetData: Identifiable {
    var id = UUID()
    let title: String
    let message: String
}

struct ActionSheet_PassDataInto: View {
    
    @State private var actionSheetData: ActionSheetData? = nil
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "ActionSheet", subtitulo: "Pasando información", description: "Se puede pasar información a través del ActionSheet.")
            
            Button {
                self.actionSheetData = ActionSheetData(title: "Opciones", message: "Elige una opción:")
            } label: {
                Text("Mostrar ActionSheet con información")
            }

            
        }
        .font(.title)
        .actionSheet(item: $actionSheetData) { data in
            ActionSheet(title: Text(data.title), message: Text(data.message))
        }
    }
}

struct ActionSheet_PassDataInto_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheet_PassDataInto()
    }
}

//
//  Text_PersonNameComponents.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 02/04/22.
//

import SwiftUI

struct Text_PersonNameComponents: View {
    @State private var name = PersonNameComponents(namePrefix: "Ing.", givenName: "Edgar", middleName: "", familyName: "Adrián", nameSuffix: "EA", nickname: "addick")
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Text", subtitulo: "PersonNameComponents", description: "Si el tipo es un nombre, se puede formatear para mostrar el nombre de diferne")
            
            Text(name, format: .name(style: .abbreviated))
            Text(name, format: .name(style: .short))
            Text(name, format: .name(style: .medium))
            Text(name, format: .name(style: .long))
                .lineLimit(1)
                .minimumScaleFactor(0.9)
        }
        .font(.title)
    }
}

struct Text_PersonNameComponents_Previews: PreviewProvider {
    static var previews: some View {
        Text_PersonNameComponents()
    }
}

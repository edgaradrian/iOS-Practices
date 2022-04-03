//
//  Text_ListFormatting.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 02/04/22.
//

import SwiftUI

struct Text_ListFormatting: View {
    @State private var people = ["Edgar", "Astrid", "Abril", "Alissa"]
    @State private var names = [
        PersonNameComponents(givenName: "Edgar", familyName: "Adrián"),
        PersonNameComponents(givenName: "Edgar", familyName: "Adrián"),
        PersonNameComponents(givenName: "Edgar", familyName: "Adrián"),
        PersonNameComponents(givenName: "Edgar", familyName: "Adrián")
    ]
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Text", subtitulo: "Formateando Lista", description: "Se puedes formatear un arreglo de valores y unirlos como se especifique.")
            
            Text(people, format: .list(type: .and))
            Text(people, format: .list(type: .or))
            
            Text(people, format: .list(type: .and, width: .narrow))
            Text(people, format: .list(type: .and, width: .short))
            Text(people, format: .list(type: .and, width: .standard))
            
            Text(names, format: .list(memberStyle: .name(style: .abbreviated), type: .and, width: .short))
        }
        .font(.title)
    }
}

struct Text_ListFormatting_Previews: PreviewProvider {
    static var previews: some View {
        Text_ListFormatting()
    }
}

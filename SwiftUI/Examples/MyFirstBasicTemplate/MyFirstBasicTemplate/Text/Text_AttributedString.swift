//
//  Text_AttributedString.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 02/04/22.
//

import SwiftUI

struct Text_AttributedString: View {
    @State private var name = "Águilas del América"
    
    var myAtributedString: AttributedString {
        var attributedName = AttributedString(name)
        let aguilas = attributedName.range(of: "Águilas")!
        let del = attributedName.range(of: "del")!
        let america = attributedName.range(of: "América")!
        
        attributedName[aguilas].foregroundColor = .blue
        attributedName[del].foregroundColor = .yellow
        attributedName[america].foregroundColor = .blue
        
        return attributedName
        
    }
    
    var body: some View {
        VStack(spacing: 40) {
            HeaderView(titulo: "Text", subtitulo: "AttributedString", description: "Se pueden aplicar atributos dentro de un string y mostrarlos usando la vista de texto (Text).")
            
            Text(myAtributedString)
        }
        .font(.title)
    }
}

struct Text_AttributedString_Previews: PreviewProvider {
    static var previews: some View {
        Text_AttributedString()
    }
}

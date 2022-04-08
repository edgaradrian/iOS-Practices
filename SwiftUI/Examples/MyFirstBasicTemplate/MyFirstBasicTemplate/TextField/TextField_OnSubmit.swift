//
//  TextField_OnSubmit.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 08/04/22.
//

import SwiftUI

struct TextField_OnSubmit: View {
    @State private var name = ""
    @State private var names = ["Edgar", "Adrián", "Addick"]
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "TextField", subtitulo: "onSubmit", description: "Definir que sucede después de darle el botón de retorno es pulsado.")
            
            TextField("Únete al grupo", text: $name)
                .textFieldStyle(.roundedBorder)
                .padding()
                .onSubmit {
                    names.append(name)
                    name = ""
                }
                .submitLabel(.join)
            
            List(names, id: \.self) { name in
                Text(name)
                    .padding()
            }
        }
        .font(.title)
    }
}

struct TextField_OnSubmit_Previews: PreviewProvider {
    static var previews: some View {
        TextField_OnSubmit()
    }
}

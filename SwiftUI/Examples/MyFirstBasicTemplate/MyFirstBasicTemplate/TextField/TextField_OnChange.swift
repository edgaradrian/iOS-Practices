//
//  TextField_OnChange.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 08/04/22.
//

import SwiftUI

struct TextField_OnChange: View {
    @State private var text = ""
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "TextField", subtitulo: "onChange", description: "Se puede utilizar el modificador onChange para escuchar los cambios y reaccionar a ellos.")
            Text("Limitar a 10 caracteres.")
            
            TextField("10 caracteres", text: $text)
                .onChange(of: text) { newValue in
                    text = String(newValue.prefix(10))
                }
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
        }
        .font(.title)
    }
}

struct TextField_OnChange_Previews: PreviewProvider {
    static var previews: some View {
        TextField_OnChange()
    }
}

//
//  Text_TextCase.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 30/03/22.
//

import SwiftUI

struct Text_TextCase: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Text", subtitulo: "Upper/Lower Case", description: "Se pueden poner en mayúsculas o minúsculas")
            
            Text("Este es el TEXTO - 276")
            
            DescView(description: "Lowercasee", backColor: .blue)
            Text("Este es el TEXTO - 276")
                .textCase(.lowercase)
            
            DescView(description: "Uppercase", backColor: .blue)
            Text("Este es el TEXTO - 276")
                .textCase(.uppercase)
            
        }
        .font(.title)
    }
}

struct Text_TextCase_Previews: PreviewProvider {
    static var previews: some View {
        Text_TextCase()
    }
}

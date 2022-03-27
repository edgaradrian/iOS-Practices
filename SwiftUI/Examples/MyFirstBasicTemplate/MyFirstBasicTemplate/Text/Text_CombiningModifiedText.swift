//
//  Text_CombiningModifiedText.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 27/03/22.
//

import SwiftUI

struct Text_CombiningModifiedText: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Text", subtitulo: "Combining Text Views", description: "Puedes formatear partes del texto utilizando el simbolo (+).")
            
            Group {
                Text("Aquí otro ")
                + Text("ejemplo").foregroundColor(.red).underline()
                + Text(" de cómo acompletar esto.")
                + Text("Notar").foregroundColor(.cyan).bold()
                + Text(" que se puede usar una vista Group para agregar relleno y límite de líneas para el texto ")
                + Text(" como un entero").bold().italic()
            }
            .font(.title)
            .padding(.horizontal)
            
        }
    }
}

struct Text_CombiningModifiedText_Previews: PreviewProvider {
    static var previews: some View {
        Text_CombiningModifiedText()
    }
}

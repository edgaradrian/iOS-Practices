//
//  SegmentedControl_NoSelected.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 14/03/22.
//

import SwiftUI

struct SegmentedControl_NoSelected: View {
    @State private var selection = 0
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Segmented Control (Picker)", subtitulo: "Ningún segmento selccionado", description: "Este segmento de control no tendrá nada seleccionado porque la variable @State no coincide con ninguna etiqueta de los valores del segmento.")
            
            Text("¿Cuántas comidas tienes al día?")
                .foregroundColor(.gray)
                .font(.title)
            
            Picker("", selection: $selection) {
                Text("Una").tag(1)
                Text("Dos").tag(2)
                Text("Tres").tag(3)
                Text("Más").tag(4)
            }
            .pickerStyle(.segmented)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.cyan, lineWidth: selection == 0 ? 1 :0)
            )
            .padding()
            
            Text("La línea de color cyan desaparecerá una vez que la selección está hecha.")
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                    Color.cyan
                )
                
            
        }
    }
}

struct SegmentedControl_NoSelected_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControl_NoSelected()
    }
}

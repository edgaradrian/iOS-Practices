//
//  ContextMenu_ConditionallyShowing.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 31/05/22.
//

import SwiftUI

struct ContextMenu_ConditionallyShowing: View {
    
    @State private var image: Image? = nil
    
    private var imageOptions = ContextMenu {
        Button(action: {}) {
            Text("Reemplazar")
            Image(systemName: "square.on.square")
        }
        
        Button(action: {}) {
            Text("Compartir")
            Image(systemName: "square.and.arrow.up")
        }
        
    }
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Menú de contexto", subtitulo: "Mostrado por condición", description: "Se puede hacer que se muestre el menú de contexto si es que se cumple una condición.")
            
            Button {
                self.image = Image("packers")
            } label: {
                Text(image == nil ? "Selecciona Imagen" : "Dejar presionado para editar")
            }
            .frame(width: 200, height: 200)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, style: StrokeStyle(lineWidth: 4, dash: [10, 10]))
            )
            .background(image == nil ? nil : image)
            .contextMenu(image == nil ? nil : imageOptions)
            

        }
    }
}

struct ContextMenu_ConditionallyShowing_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenu_ConditionallyShowing()
    }
}

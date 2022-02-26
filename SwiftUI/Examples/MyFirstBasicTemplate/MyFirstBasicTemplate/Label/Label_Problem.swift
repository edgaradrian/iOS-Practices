//
//  Label_Problem.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 26/02/22.
//

import SwiftUI

struct Label_Problem: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Label", subtitulo: "Problema", description: "Existe un problema al utilizar SF Symbols. Notar el alineado en la siguiente lista (List):")
            
            List {
                HStack(spacing: 20) {
                    Image(systemName: "rectangle.and.pencil.and.ellipsis")
                    Text("Editar")
                    Spacer()
                }
                
                HStack(spacing: 20) {
                    Image(systemName: "archivebox.circle")
                    Text("Archives")
                    Spacer()
                }
                
                HStack(spacing: 20) {
                    Image(systemName: "doc.richtext")
                    Text("Document")
                }
                
                HStack(spacing: 20) {
                    Image(systemName: "camera.badge.ellipsis")
                    Text("Camera Settings")
                    Spacer()
                }
                
            }
            .padding()
            
            DescView(description: "Notar que las diferentes anchuras de las imágenes, el texto no es alineado. La vista de etiqueta(Label) puede ayudar", backColor: .cyan)
            
        }
        .font(.title)
    }
}

struct Label_Problem_Previews: PreviewProvider {
    static var previews: some View {
        Label_Problem()
    }
}

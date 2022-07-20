//
//  LabelStyle_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 19/07/22.
//

import SwiftUI

struct LabelStyle_Intro: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                
                HeaderView(titulo: "Estilo de etiqueta", subtitulo: "Introducción", description: "Se puede implementar un estrilo propio para personalizar el icono y el texto en una etiqueta.")
                
                Text("Antes")
                
                Label {
                    Text("Aquí el texto de una etiqueta")
                } icon: {
                    Image(systemName: "star.circle.fill")
                }
                
                Divider()
                
                Text("Después")
                
                Label {
                    Text("Aquí el texto de una etiqueta")
                } icon: {
                    Image(systemName: "star.circle.fill")
                }
                .labelStyle(VerticalLabelStyle(topColor: .green.opacity(0.4), bottomColor: .green))


                
                
            }
            .font(.title)
        }
    }
}

struct LabelStyle_Intro_Previews: PreviewProvider {
    static var previews: some View {
        LabelStyle_Intro()
    }
}

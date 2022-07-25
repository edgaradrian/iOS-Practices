//
//  Resizable_AspectRatio.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 25/07/22.
//

import SwiftUI

struct Resizable_AspectRatio: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                
                HeaderView(titulo: "Redimensionamiento", subtitulo: "Manteniendo relación de aspecto", description: "La imagen expulsará hacia fuera cuando se redimensiona.")
                
                Image("packers")
                    .resizable()
                    .frame(height: 100)
                    .border(Color.red)
                
                DescView(description: "Utilizar relación de aspecto para que no se estire", backColor: .blue)
                
                Text("Ajustado")
                Image("packers")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 100)
                    .border(Color.red)
                
                Text("Llenado y trenzado")
                Image("packers")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 100)
                    .clipped()
                    .border(Color.red)
                
            }
        }
    }
}

struct Resizable_AspectRatio_Previews: PreviewProvider {
    static var previews: some View {
        Resizable_AspectRatio()
    }
}

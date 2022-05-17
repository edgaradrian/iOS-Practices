//
//  RoundedRectangle_CornerSize.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 17/05/22.
//

import SwiftUI

struct RoundedRectangle_CornerSize: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Rectangulo Redondo", subtitulo: "Tamaño de esquina", description: "Se puede personalizar la altura y la anchura de la esquina")
            
            Text("Esquina anchura: 40, altura: 60")
            RoundedRectangle(cornerSize: CGSize(width: 40, height: 60))
                .fill(Color.blue)
                .padding()
            
            Text("Esquina anchura: 60, altura: 40")
            RoundedRectangle(cornerSize: CGSize(width: 60, height: 40))
                .fill(Color.blue)
                .padding()
            
        }
        .font(.title)
        .minimumScaleFactor(0.5)
    }
}

struct RoundedRectangle_CornerSize_Previews: PreviewProvider {
    static var previews: some View {
        RoundedRectangle_CornerSize()
    }
}

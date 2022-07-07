//
//  Mask_WithShapesAndPaddings.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 07/07/22.
//

import SwiftUI

struct Mask_WithShapesAndPaddings: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "Máscara", subtitulo: "Con formas y relleno", description: "Se puede enmascarar sólo una parte de la imagen combinándola con relleno y una forma.")
            
            Image("packers")
                .resizable()
                .frame(width: 100, height: 100)
                .mask(
                    Rectangle()
                        .padding(.bottom, 20)
                )
                .border(Color.red)
            
            Image("packers")
                .resizable()
                .frame(width: 100, height: 100)
                .mask(
                    Rectangle()
                        .padding(.top, 70)
                )
                .border(Color.red)
            
            
            Image("packers")
                .resizable()
                .frame(width: 100, height: 100)
                .mask(
                    Rectangle()
                        .padding(.horizontal, 50)
                )
                .border(Color.red)
            
        }
        .font(.title)
    }
}

struct Mask_WithShapesAndPaddings_Previews: PreviewProvider {
    static var previews: some View {
        Mask_WithShapesAndPaddings()
    }
}

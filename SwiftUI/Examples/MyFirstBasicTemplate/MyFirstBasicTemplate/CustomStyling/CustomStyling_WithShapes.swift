//
//  CustomStyling_WithShapes.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 22/07/22.
//

import SwiftUI

struct CustomStyling_WithShapes: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HeaderView(titulo: "Modificador de Vista", subtitulo: "No para formas", description: "El modificador de vistas trabaja bien con vistas pero para formas se crea una función en una extensión de la forma.")
                
                Circle()
                    .addOutline(lineWidth: 10)
                    .frame(width: 300, height: 200)
                
                Capsule(style: RoundedCornerStyle.continuous)
                    .addOutline(lineWidth: 20, trim: 0.5)
                    .frame(width: 100, height: 200)
                
                RoundedRectangle(cornerRadius: 15)
                    .addOutline(lineWidth: 20)
                    .frame(width: 300, height: 200)
                
            }
        }
    }
}

struct CustomStyling_WithShapes_Previews: PreviewProvider {
    static var previews: some View {
        CustomStyling_WithShapes()
    }
}

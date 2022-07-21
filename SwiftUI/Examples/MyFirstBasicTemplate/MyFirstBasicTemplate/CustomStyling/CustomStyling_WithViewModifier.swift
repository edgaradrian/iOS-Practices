//
//  CustomStyling_WithViewModifier.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 21/07/22.
//

import SwiftUI

struct CustomStyling_WithViewModifier: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Modificador de Vista", subtitulo: "Introducción", description: "Usa modificadores de vista cuando observes que se repiten demasiado los modificadores.")
            
            Text("Este es mi primer modificador")
                .modifier(TextBanner())
            
            Spacer()
        }
    }
}

struct CustomStyling_WithViewModifier_Previews: PreviewProvider {
    static var previews: some View {
        CustomStyling_WithViewModifier()
    }
}

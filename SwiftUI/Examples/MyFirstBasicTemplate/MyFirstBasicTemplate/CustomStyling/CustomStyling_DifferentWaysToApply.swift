//
//  CustomStyling_DifferentWaysToApply.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 21/07/22.
//

import SwiftUI

struct CustomStyling_DifferentWaysToApply: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Modificador de Vista", subtitulo: "Diferentes maneras de aplicarlo", description: "Se puede hacer un modificador personalizado")
            
            ModifiedContent(content: Text("Se puede usar el ModifiedContent para aplicar a un modificador de vista personalizado"), modifier: TextBanner())
            
            Spacer()
        }
    }
}

struct CustomStyling_DifferentWaysToApply_Previews: PreviewProvider {
    static var previews: some View {
        CustomStyling_DifferentWaysToApply()
    }
}

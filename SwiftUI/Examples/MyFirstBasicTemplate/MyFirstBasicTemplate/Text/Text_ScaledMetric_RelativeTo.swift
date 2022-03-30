//
//  Text_ScaledMetric_RelativeTo.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 30/03/22.
//

import SwiftUI

struct Text_ScaledMetric_RelativeTo: View {
    @ScaledMetric(wrappedValue: 24, relativeTo: .largeTitle) private var scaleSmall: CGFloat
    @ScaledMetric(wrappedValue: 24, relativeTo: .caption2) private var scaleLarge: CGFloat
    
    var body: some View {
        VStack {
            HeaderView(titulo: "Text", subtitulo: "ScaledMetric - RelativeTo", description: "El parámetro relativeTo controla cuánto el valor incrementará o decrementará")
            
            Text("Escala este texto a menos")
                .font(.system(size: scaleSmall))
            
            Text("Escala este texto a más")
                .font(.system(size: scaleLarge))
            
        }
        .font(.title)
    }
}

struct Text_ScaledMetric_RelativeTo_Previews: PreviewProvider {
    static var previews: some View {
        Text_ScaledMetric_RelativeTo()
    }
}

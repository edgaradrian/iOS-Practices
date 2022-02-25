//
//  DisclosureGroup_Color.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 25/02/22.
//

import SwiftUI

struct DisclosureGroup_Color: View {
    @State private var disclosureExpanded = true
    
    var body: some View {
        VStack(spacing: 20) {
        
            HeaderView(titulo: "DisclosureGroup", subtitulo: "Color", description: "Puedes cambiar el color del cheurón y la etiqueta con el uso del modificador accentColor")
        
            VStack(spacing: 20) {
                DisclosureGroup("Accent Color", isExpanded: $disclosureExpanded) {
                    Text("Si quieres expandir programáticamente un DisclosureGroup puedes enlazar la propiedad al parámetro isExpanded")
                        .font(.title2)
                        .padding()
                }
                .accentColor(.orange)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .fill(Color.orange)
                        .opacity(0.1)
                )
            }
            .padding()
        
            Spacer()
        }
        .font(.title)
    }
}

struct DisclosureGroup_Color_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureGroup_Color()
    }
}

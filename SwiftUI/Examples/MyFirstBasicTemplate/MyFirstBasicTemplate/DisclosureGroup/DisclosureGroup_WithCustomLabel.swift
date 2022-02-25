//
//  DisclosureGroup_WithCustomLabel.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 25/02/22.
//

import SwiftUI

struct DisclosureGroup_WithCustomLabel: View {
    @State private var sunExpanded = false
    
    var body: some View {
        
        VStack(spacing: 20) {
            HeaderView(titulo: "DisclosureGroup", subtitulo: "Custom Label Views", description: "Puedes personalizar una vista para la etiqueta de DisclosureGroups usando un inicializador")
            
            DisclosureGroup(isExpanded: $sunExpanded) {
                HStack(spacing: 40) {
                    Image(systemName: "sunrise.fill")
                    Image(systemName: "sun.min.fill")
                    Image(systemName: "sun.max.fill")
                    Image(systemName: "sunset.fill")
                }
                .padding(24)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.orange)
                        .opacity(0.1)
                )
            } label: {
                HStack(spacing: 20) {
                    Image(systemName: "sun.max")
                    Text("Sun")
                }
            }
            .padding(.horizontal)
            
            Spacer()

        }
        .font(.title)
        
    }
}

struct DisclosureGroup_WithCustomLabel_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureGroup_WithCustomLabel()
    }
}

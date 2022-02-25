//
//  DisclosureGroup_Nested.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 25/02/22.
//

import SwiftUI

struct DisclosureGroup_Nested: View {
    @State private var disclosureExpanded = false
    @State private var sunExpanded = false
    @State private var cloudsExpanded = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "DisclosureGroup", subtitulo: "Nested", description: "Se pueden anidar DisclosureGroups para permitir a los usuarios profundizar dentro de las vistas.")
            
            DisclosureGroup(isExpanded: $disclosureExpanded) {
                VStack {
                    DisclosureGroup("Sun", isExpanded: $sunExpanded) {
                        HStack(spacing: 40) {
                            Image(systemName: "sunrise.fill")
                            Image(systemName: "sun.min.fill")
                            Image(systemName: "sun.max.fill")
                            Image(systemName: "sunset.fill")
                        }
                        .padding(.vertical)
                    }
                    
                    DisclosureGroup("Clouds", isExpanded: $cloudsExpanded) {
                        HStack(spacing: 40) {
                            Image(systemName: "cloud.fill")
                            Image(systemName: "cloud.drizzle.fill")
                            Image(systemName: "cloud.bolt.fill")
                            Image(systemName: "smoke.fill")
                        }
                        .padding(.vertical)
                    }
                    
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.orange)
                        .opacity(0.1)
                )
            } label: {
                HStack(spacing: 20) {
                    Image(systemName: "sun.max")
                    Text("Weather")
                }
            }
            .padding(.horizontal)

            Spacer()
        }
        .font(.title)
    }
}

struct DisclosureGroup_Nested_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureGroup_Nested()
    }
}

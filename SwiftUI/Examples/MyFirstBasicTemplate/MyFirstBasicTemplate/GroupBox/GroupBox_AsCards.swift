//
//  GroupBox_AsCards.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 26/02/22.
//

import SwiftUI

struct GroupBox_AsCards: View {
    var body: some View {
        VStack(spacing: 10) {
            
            HeaderView(titulo: "GroupBox", subtitulo: "Como tarjetas", description: "Puedes usar el GroupBox como una tarjeta en tu diseño UI")
            
            ScrollView {
                ForEach(0 ..< 10) { item in
                    GroupBox {
                        HStack {
                            Image(systemName: "person.circle")
                                .imageScale(.large)
                            
                            VStack(alignment: .leading) {
                                Text("Nombre de usuario")
                                Text("Dirección")
                                    .font(.body)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                }
                .padding()
            }
            
        }
        .font(.title)
    }
}

struct GroupBox_AsCards_Previews: PreviewProvider {
    static var previews: some View {
        GroupBox_AsCards()
    }
}

//
//  Navigationlink_CustomBackground.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 05/03/22.
//

import SwiftUI

struct Navigationlink_CustomBackground: View {
    var body: some View {
        NavigationView {
            VStack {
                Divider()
                    .background(
                        Color.cyan.opacity(0.5)
                    )
                
                Spacer()
                
                HeaderView(titulo: "", subtitulo: "Fondo personalizado", description: "El nuevo background modificador permite tener fondos que ignoren los límites del área segura.")
                
                Spacer()
                
            }
            .navigationTitle("Mi NavigationView")
            .font(.title)
        }
    }
}

struct Navigationlink_CustomBackground_Previews: PreviewProvider {
    static var previews: some View {
        Navigationlink_CustomBackground()
    }
}

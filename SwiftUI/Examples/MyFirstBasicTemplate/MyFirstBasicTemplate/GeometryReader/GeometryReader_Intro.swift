//
//  GeometryReader_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 17/02/22.
//

import SwiftUI

struct GeometryReader_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "GeometryReader", subtitulo: "Introduction", description: "GeometryReader es una vista contenedora que llena todo el espacio que tenga disponible")
            
            GeometryReader { _ in
                
            }
            .background(Color.yellow)
        }
        .font(.title)
    }
}

struct GeometryReader_Intro_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader_Intro()
    }
}

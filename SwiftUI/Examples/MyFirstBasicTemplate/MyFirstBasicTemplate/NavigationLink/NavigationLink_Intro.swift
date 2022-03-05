//
//  NavigationLink_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 05/03/22.
//

import SwiftUI

struct NavigationLink_Intro: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                HeaderView(titulo: "", subtitulo: "Introducción", description: "El NavigationLink es para navegar a una nueva vista dentro del NavigationView")
                NavigationLink("Aquí el Link", destination: SecondView())
                Spacer()
                DescView(description: "Aquí un ejemplo básico de cómo implementar el vínculo para ir otra vista.", backColor: .cyan)
                
            }
            .navigationTitle("Mi primer NavigationLink")
        }
        .font(.title)
    }
}//NavigationLink

struct SecondView: View {
    var body: some View {
        VStack {
            Text("Soy la Vista Dos")
            Spacer()
        }
    }
}

struct NavigationLink_Intro_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLink_Intro()
    }
}

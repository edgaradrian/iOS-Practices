//
//  FixedSize_HorizontalVertical.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 10/06/22.
//

import SwiftUI

struct FixedSize_HorizontalVertical: View {
    var body: some View {
        ScrollView {
            VStack {
                
                HeaderView(titulo: "Fixed Size", subtitulo: "Horizontal y Vertical", description: "Por defecto, fixedSize, los parámetros de horizontal y vertical son ambos verdaderos.")
                
                Text("Aquí un ejemplo con horizontal en verdadero y vertical en falso.")
                
                ZStack(alignment: .leading) {
                    HStack {
                        Spacer()
                        Image("packers")
                            .resizable()
                            .frame(width: 200, height: 200)
                    }
                    
                    Text("Bienvenido a Green Bay")
                        .italic()
                        .bold()
                        .shadow(color: .white, radius: 1, x: 1, y: 1)
                        .padding()
                        .fixedSize(horizontal: true, vertical: false)
                        .frame(width: 200, height: 200, alignment: .leading)
                        .border(Color.blue)
                    
                }
                
                Text("Aquí horizontal es falso y vertical verdadero")
                
                ZStack(alignment: .leading) {
                    HStack {
                        Spacer()
                        Image("packers")
                            .resizable()
                            .frame(width: 200, height: 200)
                    }
                    Text("Bienvenidos a Green Bay")
                        .italic()
                        .bold()
                        .font(.system(size: 40))
                        .shadow(color: .white, radius: 1, x: 1, y: 1)
                        .padding()
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(width: 200, height: 200)
                        .border(Color.blue)
                    
                }
                
            }
        }
    }
}

struct FixedSize_HorizontalVertical_Previews: PreviewProvider {
    static var previews: some View {
        FixedSize_HorizontalVertical()
    }
}

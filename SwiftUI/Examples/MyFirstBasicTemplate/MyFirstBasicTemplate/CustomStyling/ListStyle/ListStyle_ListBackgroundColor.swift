//
//  ListStyle_ListBackgroundColor.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 19/07/22.
//

import SwiftUI

struct ListStyle_ListBackgroundColor: View {
    var body: some View {
        GeometryReader { g in
            ScrollView {
                VStack(spacing: 20) {
                    
                    HeaderView(titulo: "Lista", subtitulo: "Color de fondo", description: "cuando se crea un modificador de vista se puede personalizar el color del fondo.")
                    
                    List {
                        Text("Línea 1")
                        Text("Línea 2")
                        Text("Línea 3")
                            .listRowBackground(Color.yellow)
                    }
                    .frame(width: g.size.width - 10, height: g.size.height / 3)
                    .foregroundColor(.white)
                    .modifier(ListBackground(color: .blue))
                    
                    
                }
                .font(.title)
            }
        }
    }
}

struct ListStyle_ListBackgroundColor_Previews: PreviewProvider {
    static var previews: some View {
        ListStyle_ListBackgroundColor()
    }
}

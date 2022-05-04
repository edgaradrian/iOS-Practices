//
//  Image_SymbolVariant.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 03/05/22.
//

import SwiftUI

struct Image_SymbolVariant: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Imagen - Symbols", subtitulo: "SymbolVariant", description: "Se puede usar el modificador symbolVariant para cambiar entre diferentes variantes del simbolo")
            
            List {
                HStack {
                    Label("None", systemImage: "lock")
                        .symbolVariant(.none)
                    Spacer()
                    Label("Fill", systemImage: "lock")
                        .symbolVariant(.fill)
                }
                
                HStack {
                    Label("Circle", systemImage: "lock").symbolVariant(.circle)
                    Spacer()
                    Label("Circle", systemImage: "lock").symbolVariant(.circle.fill)
                }
                
                HStack {
                    Label("Rectangle", systemImage: "lock").symbolVariant(.rectangle)
                    Spacer()
                    Label("Rectangle.fill", systemImage: "lock").symbolVariant(.rectangle.fill)
                }
                
                HStack {
                    Label("Square", systemImage: "lock")
                        .symbolVariant(.square)
                    Spacer()
                    Label("Square.fill", systemImage: "lock").symbolVariant(.square.fill)
                }
                
                HStack {
                    Label("Slash", systemImage: "lock").symbolVariant(.slash)
                    Spacer()
                    Label("Slash.fill", systemImage: "lock")
                        .symbolVariant(.slash.fill)
                }
                
                
            }
            .font(.title2)
        }
    }
}

struct Image_SymbolVariant_Previews: PreviewProvider {
    static var previews: some View {
        Image_SymbolVariant()
    }
}

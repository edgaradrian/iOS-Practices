//
//  Image_UsingMaterials.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 04/05/22.
//

import SwiftUI

struct Image_UsingMaterials: View {
    var body: some View {
        ZStack {
            
            Image("ARod")
                .resizable()
                .opacity(0.5)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                
                HeaderView(titulo: "Imagen - Simbolos", subtitulo: "Usando Materials", description: "Los Materials son también ShapeStyles que pueden ser aplicados en los SF Symbols.")
                
                HStack {
                    Image(systemName: "bookmark.square.fill")
                        .foregroundStyle(.secondary)
                    Image(systemName: "bookmark.square.fill")
                        .foregroundStyle(.tertiary)
                    Image(systemName: "bookmark.square.fill")
                        .foregroundStyle(.quaternary)
                }
                .font(.system(size: 90))
                .padding()
                .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 20))
                
                HStack {
                    Image(systemName: "bookmark.square.fill")
                        .foregroundStyle(.ultraThinMaterial)
                    
                    Image(systemName: "bookmark.square.fill")
                        .foregroundStyle(.regularMaterial)
                    
                    Image(systemName: "bookmark.square.fill")
                        .foregroundStyle(.thickMaterial)
                    
                    
                }
                .font(.system(size: 90))
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .strokeBorder(.thinMaterial, lineWidth: 8)
                    
                )
                
                
            }
            .font(.title)
            
            
        }
    }
}

struct Image_UsingMaterials_Previews: PreviewProvider {
    static var previews: some View {
        Image_UsingMaterials()
    }
}

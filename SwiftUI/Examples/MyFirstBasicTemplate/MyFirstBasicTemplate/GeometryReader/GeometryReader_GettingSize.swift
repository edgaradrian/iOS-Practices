//
//  GeometryReader_GettingSize.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 18/02/22.
//

import SwiftUI

struct GeometryReader_GettingSize: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView(titulo: "GeometryReader", subtitulo: "Getting Size", description: "Usa el GeometryReader cuando necesites obtener la altura y anchura de un espacio")
            
            GeometryReader { geometryProxy in
                VStack(spacing: 10) {
                    Text("Width: \(geometryProxy.size.width)")
                    Text("Height: \(geometryProxy.size.height)")
                }
                .padding()
                .foregroundColor(.white)
            }
            .background(Color.yellow)
            
        }
        .font(.title)
    }
}

struct GeometryReader_GettingSize_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader_GettingSize()
    }
}

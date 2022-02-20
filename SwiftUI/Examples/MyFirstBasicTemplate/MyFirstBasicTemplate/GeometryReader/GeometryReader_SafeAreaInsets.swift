//
//  GeometryReader_SafeAreaInsets.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 20/02/22.
//

import SwiftUI

struct GeometryReader_SafeAreaInsets: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView(titulo: "GeometryReader", subtitulo: "SafeAreaInsets", description: "GeometryReader puede también decir los safe area insets")
            
            GeometryReader { geometry in
                VStack {
                    Text("geometry.safeAreaInsets.leading: \(geometry.safeAreaInsets.leading)")
                    Text("geometry.safeAreaInsets.trailing: \(geometry.safeAreaInsets.trailing)")
                    Text("geometry.safeAreaInsets.top: \(geometry.safeAreaInsets.top)")
                    Text("geometry.safeAreaInsets.bottom: \(geometry.safeAreaInsets.bottom)")
                }
                .padding()
            }
            .background(Color.blue)
            .foregroundColor(.white)
            
        }
        .font(.title)
    }
}

struct GeometryReader_SafeAreaInsets_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader_SafeAreaInsets()
.previewInterfaceOrientation(.portraitUpsideDown)
    }
}

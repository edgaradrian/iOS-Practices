//
//  ImagePaint_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 20/05/22.
//

import SwiftUI

struct ImagePaint_Intro: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(imgPaint)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                    HeaderView(titulo: "ImagePaint", subtitulo: "Introducción", description: "La imagen no es una imagen, se ocupa para rellenar el fondo quer e suna imagen.")
            }
            .font(.title)
            
        }
    }
}

struct ImagePaint_Intro_Previews: PreviewProvider {
    static var previews: some View {
        ImagePaint_Intro()
    }
}

let imgPaint = ImagePaint(image: Image("imageRepeat"))

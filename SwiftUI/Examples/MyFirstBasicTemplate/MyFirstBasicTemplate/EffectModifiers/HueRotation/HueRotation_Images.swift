//
//  HueRotation_Images.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 05/07/22.
//

import SwiftUI

struct HueRotation_Images: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 5) {
                HeaderView(titulo: "Rotación de Tonalidad", subtitulo: "Con Imágenes", description: "Aplicando la rotación de matiz con imágenes.")
                
                Image("packers")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                    .overlay(Text("0º"), alignment: .top)
                
                Image("packers")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                    .hueRotation(Angle.degrees(90))
                    .overlay(Text("90º"), alignment: .top)
                
                Image("packers")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                    .hueRotation(Angle.degrees(180))
                    .overlay(Text("180º"), alignment: .top)
                
                Image("packers")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                    .hueRotation(Angle.degrees(270))
                    .overlay(Text("270º"), alignment: .top)
            }
            .font(.title)
        }
    }
}

struct HueRotation_Images_Previews: PreviewProvider {
    static var previews: some View {
        HueRotation_Images()
    }
}

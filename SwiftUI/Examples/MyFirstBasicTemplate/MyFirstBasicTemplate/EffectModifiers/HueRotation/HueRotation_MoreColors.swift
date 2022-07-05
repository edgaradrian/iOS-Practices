//
//  HueRotation_MoreColors.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 05/07/22.
//

import SwiftUI

struct HueRotation_MoreColors: View {
    var body: some View {
        VStack(spacing: 5) {
            HeaderView(titulo: "Rotación de matiz", subtitulo: "Introducción", description: "La rotación de matiz cmabia de el color a través de la rueda de los colores.")
            
            HStack(spacing: 0) {
                Color.cyan
                    .frame(width: 50, height: 50)
                    .overlay(
                        Text("0º")
                    )
                
                Color.cyan
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(45))
                    .overlay(
                        Text("45º")
                    )
                
                Color.cyan
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(90))
                    .overlay(
                        Text("90º")
                    )
                
                Color.cyan
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(135))
                    .overlay(
                        Text("135º")
                    )
                
                Color.cyan
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(180))
                    .overlay(
                        Text("180º")
                    )
                
                Color.cyan
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(225))
                    .overlay(
                        Text("225º")
                    )
                
                
                Color.cyan
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(270))
                    .overlay(
                        Text("270º")
                    )
                
                Color.cyan
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(315))
                    .overlay(
                        Text("315º")
                    )
                
            }
            
            HStack(spacing: 0) {
                Color.purple
                    .frame(width: 50, height: 50)
                    .overlay(
                        Text("0º")
                    )
                
                Color.purple
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(45))
                    .overlay(
                        Text("45º")
                    )
                
                Color.purple
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(90))
                    .overlay(
                        Text("90º")
                    )
                
                Color.purple
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(135))
                    .overlay(
                        Text("135º")
                    )
                
                Color.purple
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(180))
                    .overlay(
                        Text("180º")
                    )
                
                Color.purple
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(225))
                    .overlay(
                        Text("225º")
                    )
                
                
                Color.purple
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(270))
                    .overlay(
                        Text("270º")
                    )
                
                Color.purple
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(315))
                    .overlay(
                        Text("315º")
                    )
                
            }
            
            HStack(spacing: 0) {
                Color.orange
                    .frame(width: 50, height: 50)
                    .overlay(
                        Text("0º")
                    )
                
                Color.orange
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(45))
                    .overlay(
                        Text("45º")
                    )
                
                Color.orange
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(90))
                    .overlay(
                        Text("90º")
                    )
                
                Color.orange
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(135))
                    .overlay(
                        Text("135º")
                    )
                
                Color.orange
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(180))
                    .overlay(
                        Text("180º")
                    )
                
                Color.orange
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(225))
                    .overlay(
                        Text("225º")
                    )
                
                
                Color.orange
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(270))
                    .overlay(
                        Text("270º")
                    )
                
                Color.orange
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(315))
                    .overlay(
                        Text("315º")
                    )
                
            }
            
            
            HStack(spacing: 0) {
                Color.brown
                    .frame(width: 50, height: 50)
                    .overlay(
                        Text("0º")
                    )
                
                Color.brown
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(45))
                    .overlay(
                        Text("45º")
                    )
                
                Color.brown
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(90))
                    .overlay(
                        Text("90º")
                    )
                
                Color.brown
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(135))
                    .overlay(
                        Text("135º")
                    )
                
                Color.brown
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(180))
                    .overlay(
                        Text("180º")
                    )
                
                Color.brown
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(225))
                    .overlay(
                        Text("225º")
                    )
                
                
                Color.brown
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(270))
                    .overlay(
                        Text("270º")
                    )
                
                Color.brown
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(315))
                    .overlay(
                        Text("315º")
                    )
                
            }
            
            
            HStack(spacing: 0) {
                Color.red
                    .frame(width: 50, height: 50)
                    .overlay(
                        Text("0º")
                    )
                
                Color.red
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(45))
                    .overlay(
                        Text("45º")
                    )
                
                Color.red
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(90))
                    .overlay(
                        Text("90º")
                    )
                
                Color.red
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(135))
                    .overlay(
                        Text("135º")
                    )
                
                Color.red
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(180))
                    .overlay(
                        Text("180º")
                    )
                
                Color.red
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(225))
                    .overlay(
                        Text("225º")
                    )
                
                
                Color.red
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(270))
                    .overlay(
                        Text("270º")
                    )
                
                Color.red
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(315))
                    .overlay(
                        Text("315º")
                    )
                
            }
            
            
            HStack(spacing: 0) {
                Color.green
                    .frame(width: 50, height: 50)
                    .overlay(
                        Text("0º")
                    )
                
                Color.green
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(45))
                    .overlay(
                        Text("45º")
                    )
                
                Color.green
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(90))
                    .overlay(
                        Text("90º")
                    )
                
                Color.green
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(135))
                    .overlay(
                        Text("135º")
                    )
                
                Color.green
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(180))
                    .overlay(
                        Text("180º")
                    )
                
                Color.green
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(225))
                    .overlay(
                        Text("225º")
                    )
                
                
                Color.green
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(270))
                    .overlay(
                        Text("270º")
                    )
                
                Color.green
                    .frame(width: 50, height: 50)
                    .hueRotation(Angle.degrees(315))
                    .overlay(
                        Text("315º")
                    )
                
            }
            
        }
    }
}

struct HueRotation_MoreColors_Previews: PreviewProvider {
    static var previews: some View {
        HueRotation_MoreColors()
    }
}

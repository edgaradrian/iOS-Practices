//
//  Padding_Custom_Edge_Inset.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 23/06/22.
//

import SwiftUI

struct Padding_Custom_Edge_Inset: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HeaderView(titulo: "Relleno", subtitulo: "Personalizando los límites del recuadro", description: "Se puede crear un personalizado tamaño de relleno.")
                
                Text("Apilamiento de rellenos")
                
                VStack(spacing: 0) {
                    Text("Aaron Rodgers")
                        .padding(.bottom, 10)
                    Image("ARod")
                        .resizable()
                        .frame(width: 80, height: 120)
                        .border(Color.yellow)
                    Text("Quarterback")
                        .font(.body)
                        .padding(.top, 8)
                }
                .padding()
                .padding(.horizontal)
                .foregroundColor(.green)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.yellow)
                )
                
                Text("Personalización de recuadro")
                
                VStack(spacing: 0) {
                    Text("Aaron Rodgers")
                        .padding(.bottom, 10)
                    Image("ARod")
                        .resizable()
                        .frame(width: 80, height: 120)
                        .border(Color.yellow)
                    Text("Quarterback")
                        .font(.body)
                        .padding(.top, 8)
                }
                .padding(EdgeInsets(top: 32, leading: 16, bottom: 32, trailing: 16))
                .foregroundColor(.green)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.yellow)
                )
                
            }
        }
    }
}

struct Padding_Custom_Edge_Inset_Previews: PreviewProvider {
    static var previews: some View {
        Padding_Custom_Edge_Inset()
    }
}

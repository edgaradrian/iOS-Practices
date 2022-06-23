//
//  Padding_OtherInsets.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 23/06/22.
//

import SwiftUI

struct Padding_OtherInsets: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HeaderView(titulo: "Relleno", subtitulo: "Introducción", description: "Se puede controlar la dirección del relleno con otro parámetro para recuadro.")

                HStack {
                    Spacer()
                    Text("Inicial")
                        .foregroundColor(.black)
                        .font(.largeTitle)
                    Spacer()
                    Text("Arriba")
                        .foregroundColor(.black)
                        .font(.largeTitle)
                    Spacer()
                }
                
                
                HStack {
                    Spacer()
                    Image("ARod")
                        .resizable()
                        .frame(width: 80, height: 120)
                        .padding(.leading)
                        .border(Color.red)
                    Spacer()
                    Image("ARod")
                        .resizable()
                        .frame(width: 80, height: 120)
                        .padding(.top)
                        .border(Color.red)
                    Spacer()
                }
                
                
                HStack {
                    Spacer()
                    Text("Al final")
                        .foregroundColor(.black)
                        .font(.largeTitle)
                    Spacer()
                    Text("Al fondo")
                        .foregroundColor(.black)
                        .font(.largeTitle)
                    Spacer()
                }
                
                
                HStack {
                    Spacer()
                    Image("ARod")
                        .resizable()
                        .frame(width: 80, height: 120)
                        .padding(.trailing)
                        .border(Color.red)
                    Spacer()
                    Image("ARod")
                        .resizable()
                        .frame(width: 80, height: 120)
                        .padding(.bottom)
                        .border(Color.red)
                    Spacer()
                }
                
                
                HStack {
                    Spacer()
                    Text("Arriba al final")
                        .foregroundColor(.black)
                        .font(.body)
                    Spacer()
                    Text("Al inicio al fondo")
                        .foregroundColor(.black)
                        .font(.body)
                    Spacer()
                }
                
                
                HStack {
                    Spacer()
                    Image("ARod")
                        .resizable()
                        .frame(width: 80, height: 120)
                        .padding([.top, .trailing])
                        .border(Color.red)
                    Spacer()
                    Image("ARod")
                        .resizable()
                        .frame(width: 80, height: 120)
                        .padding([.leading, .bottom])
                        .border(Color.red)
                    Spacer()
                }

            }
        }
    }
}

struct Padding_OtherInsets_Previews: PreviewProvider {
    static var previews: some View {
        Padding_OtherInsets()
    }
}

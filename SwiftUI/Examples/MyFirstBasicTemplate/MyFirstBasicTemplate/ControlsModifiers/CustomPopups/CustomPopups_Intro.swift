//
//  CustomPopups_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 02/06/22.
//

import SwiftUI

struct CustomPopups_Intro: View {
    
    @State private var showingModal = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                HeaderView(titulo: "Ventana Emergente Personalizada", subtitulo: "Introducción", description: "Se puede crear una ventana emergente personalizada usando ZStack y una variable State.")
                
                Button {
                    self.showingModal = true
                } label: {
                    Text("Mostrar ventana emergente.")
                }
                
                Spacer()

            }
            
            if $showingModal.wrappedValue {
                ZStack {
                    Color
                        .black
                        .opacity(0.4)
                        .ignoresSafeArea()
                    
                    VStack(spacing: 20) {
                        Text("Ventana Emergente")
                            .bold()
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(
                                Color.blue
                            )
                            .foregroundColor(.white)
                        Spacer()
                        Button {
                            self.showingModal = false
                        } label: {
                            Text("Cerrar")
                        }
                        .padding()

                    }
                    .frame(width: 300, height: 200)
                    .background(
                        Color.white
                    )
                    .cornerRadius(20)
                    .shadow(radius: 20)
                    
                    
                }
            }
            
        }
    }
}

struct CustomPopups_Intro_Previews: PreviewProvider {
    static var previews: some View {
        CustomPopups_Intro()
    }
}

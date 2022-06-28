//
//  Blur_UnderneathView.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 28/06/22.
//

import SwiftUI

struct Blur_UnderneathView: View {
    
    @State private var showingModal = false
    
    var body: some View {
        
        ZStack {
            
            VStack(spacing: 20) {
                HeaderView(titulo: "Desenfoque", subtitulo: "En la capa debajo", description: "Desenfoca la capa debajo mientras muestra la ventana emergente")
                
                Button {
                    self.showingModal.toggle()
                } label: {
                    Text("Mostrar ventana emergente")
                }

                Spacer()
                
            }
            .blur(radius: $showingModal.wrappedValue ? 30 : 0)
            
            if $showingModal.wrappedValue {
                ZStack {
                    Color.black
                        .opacity(0.3)
                        .ignoresSafeArea()
                    
                    VStack(spacing: 20) {
                        Text("Ventana Emergente")
                            .padding()
                            .font(.title)
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
                    .frame(width: 300, height: 300)
                    .background(
                        Color.white
                    )
                    .cornerRadius(20)
                    .shadow(radius: 20)
                    
                }
            }
            
            
        }
        .font(.title)
        
    }
}

struct Blur_UnderneathView_Previews: PreviewProvider {
    static var previews: some View {
        Blur_UnderneathView()
    }
}

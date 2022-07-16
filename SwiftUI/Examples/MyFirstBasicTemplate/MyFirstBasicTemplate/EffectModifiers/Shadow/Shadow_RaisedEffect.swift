//
//  Shadow_RaisedEffect.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 15/07/22.
//

import SwiftUI

struct Shadow_RaisedEffect: View {
    var body: some View {
        ZStack {
            Color.cyan
                .opacity(0.4)
                .ignoresSafeArea(.all)
            
            VStack(spacing: 20) {
                HeaderView(titulo: "Sombra", subtitulo: "Efecto de Elevación", description: "La sombra da el efecto de elevación")
                
                Spacer()
                
                HStack {
                    Image("packers")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .clipShape(
                            Circle()
                        )
                        .padding()
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Green Bay Packers")
                            .bold()
                        
                        Text("Wisconsin")
                            .font(.caption)
                        
                    }
                    
                    Spacer()
                    
                }
                .foregroundColor(Color.blue)
                .frame(width: 350, height: 100)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.cyan
                            .opacity(0.4))
                        .shadow(color: .white, radius: 4, x: -4, y: -4)
                        .shadow(radius: 4, x: 4, y: 4)
                )
                
                Spacer()
                
                Text("Botones Elevados")
                
                HStack {
                    
                    Button(action: {}) {
                        Image(systemName: "lightbulb")
                    }
                    .frame(width: 80, height: 80)
                    .background(
                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .fill(Color.cyan
                                .opacity(0.4))
                            .shadow(color: .white, radius: 3, x: -4, y: -4)
                            .shadow(radius: 3, x: 4, y: 4)
                    )
                    
                    Button(action: {}) {
                        Image(systemName: "lightbulb")
                    }
                    .frame(width: 80, height: 80)
                    .background(
                        Color.cyan
                            .opacity(0.4)
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .stroke(Color.cyan
                                .opacity(0.4), lineWidth: 4)
                            .shadow(color: .white, radius: 4, x: 4, y: 4)
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .stroke(Color.cyan
                                .opacity(0.4), lineWidth: 4)
                            .shadow(radius: 3, x: 4, y: 4)
                    )
                    .clipShape(
                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                    )
                    
                    
                }
                
                Spacer()
                
                
            }
            
            
        }
        .font(.title)
    }
}

struct Shadow_RaisedEffect_Previews: PreviewProvider {
    static var previews: some View {
        Shadow_RaisedEffect()
    }
}

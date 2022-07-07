//
//  PreferredColorSchema_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 07/07/22.
//

import SwiftUI

struct PreferredColorSchema_Intro: View {
    
    @State private var isOn = false
    
    var body: some View {
        ZStack {
            
            Color("Theme4Background")
            
            VStack(spacing: 20) {
                Text("Color Preferido")
                    .font(.largeTitle)
                    .foregroundColor(Color("Theme4Foreground"))
                
                Text("Introducción")
                    .colorInvert()
                
                Text("Sin importar el esquema que desee el usuario, la vista se mostrará de acuerdo a el.")
                    .frame(maxWidth: .infinity)
                    .padding().foregroundColor(Color("Theme4Background"))
                    .background(Color("Theme4Foreground"))
                
                VStack(spacing: 20) {
                    Text("Preferencias")
                        .font(.largeTitle)
                        .foregroundColor(Color("Theme4Background"))
                    
                    Toggle(isOn: $isOn) {
                        Text("Modo Obscuro")
                            .foregroundColor(Color("Theme4Background"))
                    }
                }
                .padding(25)
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color("Theme4Foreground"))
                )
                .padding()
                
                
            }
            .font(.title)
            
        }
        .ignoresSafeArea()
        .preferredColorScheme(isOn ? .dark : .light)
    }
}

struct PreferredColorSchema_Intro_Previews: PreviewProvider {
    static var previews: some View {
        PreferredColorSchema_Intro()
    }
}

//
//  SignInWithAppleButton_Customizing.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 14/03/22.
//

import SwiftUI
import AuthenticationServices

struct SignInWithAppleButton_Customizing: View {
    var body: some View {
        ZStack {
            Color("ColorBackground")
                .ignoresSafeArea()
            
            VStack(spacing: 15) {
                HeaderView(titulo: "SignInWithApple", subtitulo: "Personalización", description: "Se puede personalizar los botones usando el modificador signInWithAppleButtonStyle que viene con el botón.")
                
                VStack {
                    Text("negro")
                    SignInWithAppleButton(.signIn, onRequest: { request in },
                                          onCompletion: { result in })
                        .signInWithAppleButtonStyle(.black)
                        .frame(height: 50)
                    
                    Text("WhiteOutline")
                    SignInWithAppleButton(.continue, onRequest: { request in }, onCompletion: { result in })
                        .signInWithAppleButtonStyle(.whiteOutline)
                        .frame(height: 50)
                    
                    Text("white")
                    SignInWithAppleButton(.signUp, onRequest: { request in },
                                          onCompletion: { result in })
                        .signInWithAppleButtonStyle(.white)
                        .frame(height: 50)
                        .shadow(radius: 8, y: 12)
                    
                }
                .padding(.horizontal)
                
            }
            .font(.title)
            
        }
        .font(.title)
    }
}

struct SignInWithAppleButton_Customizing_Previews: PreviewProvider {
    static var previews: some View {
        SignInWithAppleButton_Customizing()
    }
}

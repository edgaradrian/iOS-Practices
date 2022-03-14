//
//  SignInWithApple_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 14/03/22.
//

import SwiftUI
import AuthenticationServices

struct SignInWithApple_Intro: View {
    var body: some View {
        VStack(spacing: 15) {
            
            HeaderView(titulo: "SignInWithAppleButton", subtitulo: "Introducción", description: "Esta vista permite mostrar el botón de inicio de sesión de Apple, continuar e inscribirse")
            
            VStack {
                Text("Iniciar sesión")
                SignInWithAppleButton(.signIn, onRequest: { request in }, onCompletion: { result in })
                    .frame(height: 50)
                
                Text("Continuar")
                SignInWithAppleButton(.continue, onRequest: { request in }, onCompletion: { result in })
                    .frame(height: 50)
                
                Text("Inscribirse")
                SignInWithAppleButton(.signUp, onRequest: { request in }, onCompletion: { result in })
                    .frame(height: 50)
                    .shadow(radius: 8, y: 12)
                
            }
            .padding(.horizontal)
            
        }
        .font(.title)
    }
}

struct SignInWithApple_Intro_Previews: PreviewProvider {
    static var previews: some View {
        SignInWithApple_Intro()
    }
}

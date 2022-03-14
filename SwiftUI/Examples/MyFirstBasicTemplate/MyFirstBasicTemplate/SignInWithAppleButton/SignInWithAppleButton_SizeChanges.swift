//
//  SignInWithAppleButton_SizeChanges.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 14/03/22.
//

import SwiftUI
import AuthenticationServices

struct SignInWithAppleButton_SizeChanges: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "SignInWithAppleButton", subtitulo: "Cambiando de Tamaño", description: "El contenido del botón camiará visualmente con el tamaño que se le dé.")
            
            VStack {
                
                SignInWithAppleButton(.signIn, onRequest: { request in }, onCompletion: { result in } )
                    .frame(width: 50, height: 50)
                
                SignInWithAppleButton(.continue, onRequest: { request in }, onCompletion: { result in } )
                    .frame(width: 100, height: 100)
                
                SignInWithAppleButton(.signIn, onRequest: { request in }, onCompletion: { result in } )
                    .frame(width: 200, height: 50)
                
                SignInWithAppleButton(.signIn, onRequest: { request in }, onCompletion: { result in } )
                    .frame(height: 150)
            }
            .padding(.horizontal)
            
            
        }
        .font(.title)
    }
}

struct SignInWithAppleButton_SizeChanges_Previews: PreviewProvider {
    static var previews: some View {
        SignInWithAppleButton_SizeChanges()
    }
}

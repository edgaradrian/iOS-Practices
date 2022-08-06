//
//  ContentView.swift
//  SwiftUIFormRegistration
//
//  Created by Edgar Adrián on 04/08/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var userRegistrationViewModel = UserRegistrationViewModel()
    
    var body: some View {
        VStack {
            Text("Crear una cuenta")
                .font(.system(.largeTitle, design: .rounded))
                .bold()
                .padding(.bottom, 30)
            
            FormField(fieldValue: $userRegistrationViewModel.username, fieldName: "Nombre de usuario")
            RequirementText(iconColor: userRegistrationViewModel.isUsernameLengthValid ? Color.secondary : Color.orange, text: "Un mínimo de 4 carácteres", isStrikeThrough: userRegistrationViewModel.isUsernameLengthValid)
                .padding()
            
            FormField(fieldValue: $userRegistrationViewModel.password, fieldName: "Contraseña", isSecure: true)
            VStack {
                RequirementText(iconName: "lock.open", iconColor: userRegistrationViewModel.isPasswordLengthValid ? Color.secondary : Color.orange, text: "Un mínimo de 4 carácteres", isStrikeThrough: userRegistrationViewModel.isPasswordLengthValid)
                RequirementText(iconName: "lock.open", iconColor: userRegistrationViewModel.isPasswordCapitalLetter ? Color.secondary : Color.orange, text: "Una mayúscula", isStrikeThrough: userRegistrationViewModel.isPasswordCapitalLetter)
            }
            .padding()
            
            FormField(fieldValue: $userRegistrationViewModel.passwordConfirm, fieldName: "Confirmar Contraseña", isSecure: true)
            RequirementText(iconColor: userRegistrationViewModel.isPasswordConfirmValid ? Color.secondary : Color.orange, text: "Las contraseñas no coincide", isStrikeThrough: userRegistrationViewModel.isPasswordConfirmValid)
                .padding()
                .padding(.bottom, 50)
            
            Button(action: {
                //Code
            }) {
                Text("Registrarse")
                    .font(.system(.body, design: .rounded))
                    .foregroundColor(.white)
                    .bold()
                    .padding()
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(red: 251/255, green: 128/255, blue: 128/255), Color(red: 253/255, green: 193/255, blue: 104/255)]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(10)
                    .padding(.horizontal)
                    
            }
            
            VStack {
                Text("¿Ya tienes una cuenta?")
                    .font(.system(.body, design: .rounded))
                    .bold()
                    
                Button(action: {
                    //Code
                }) {
                    Text("Identifícate")
                        .font(.system(.body, design: .rounded))
                        .bold()
                        .foregroundColor(Color(red: 251/255, green: 128/255, blue: 128/255))
                }
            }.padding(.top, 50)
            
            Spacer()
        }
        .padding()
    }//body
    
}//ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

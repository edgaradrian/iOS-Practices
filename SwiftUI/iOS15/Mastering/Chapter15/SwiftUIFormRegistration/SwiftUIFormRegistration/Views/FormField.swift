//
//  FormField.swift
//  SwiftUIFormRegistration
//
//  Created by Edgar Adrián on 04/08/22.
//

import SwiftUI

struct FormField: View {
    @Binding var fieldValue: String
    var fieldName = ""
    var isSecure = false
    
    var body: some View {
        
        VStack {
            if isSecure {
                SecureField(fieldName, text: $fieldValue)
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .padding(.horizontal)
                
            } else {
                TextField(fieldName, text: $fieldValue)                 .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .padding(.horizontal)
            }

            Divider()
                .frame(height: 1)
                .background(Color(red: 240/255, green: 240/255, blue: 240/255))
                .padding(.horizontal)
        }
        
    }//body
    
    
}//FormField

struct FormField_Previews: PreviewProvider {
    static var previews: some View {
        FormField(fieldValue: .constant("prueba"))
    }
}//FormField_Previews

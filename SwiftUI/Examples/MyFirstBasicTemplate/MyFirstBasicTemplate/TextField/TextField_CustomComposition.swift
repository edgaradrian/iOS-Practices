//
//  TextField_CustomComposition.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 07/04/22.
//

import SwiftUI

struct TextField_CustomComposition: View {
    @State private var textFieldData = ""
    
    var body: some View {
        VStack {
            HeaderView(titulo: "TextField", subtitulo: "Composición Personalizada", description: "Componer un campo de texto personalizado empalmando otras vistas juntas.")
            
            VStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    TextField("Primer nombre", text: $textFieldData)
                    Image(systemName: "slider.horizontal.3")
                }
                Divider()
            }
            
            HStack {
                Image(systemName: "envelope")
                    .foregroundColor(.gray)
                    .font(.headline)
                TextField("correo electrónico", text: $textFieldData)
            }
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 1)
            )
            .padding()
            
            
            HStack {
                
                TextField("País", text: $textFieldData)
                Button(action: {}) {
                    Image(systemName: "chevron.right")
                        .padding(.horizontal)
                }
                .accentColor(.blue)
                
            }
            .padding()
            .overlay(
                Capsule()
                    .stroke(Color.gray, lineWidth: 1)
            )
            .padding()
            
        }
        .font(.title)
    }
}

struct TextField_CustomComposition_Previews: PreviewProvider {
    static var previews: some View {
        TextField_CustomComposition()
    }
}

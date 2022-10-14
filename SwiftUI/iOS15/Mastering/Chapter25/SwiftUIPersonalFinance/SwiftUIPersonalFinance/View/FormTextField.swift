//
//  FormTextField.swift
//  SwiftUIPersonalFinance
//
//  Created by Edgar Adrián on 14/10/22.
//

import SwiftUI

struct FormTextField: View {
    
    let name: String
    var placeHolder: String
    
    @Binding var value: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(name.uppercased())
                .font(.system(.subheadline, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.primary)
            
            TextField(placeHolder, text: $value)
                .font(.headline)
                .foregroundColor(.primary)
                .padding()
                .border(Color("Border"), width: 1.0)
         
        }
    }//body
    
}//FormTextField

struct FormTextField_Previews: PreviewProvider {
    static var previews: some View {
        FormTextField(name: "Nombre", placeHolder: "Nombre", value: .constant(""))
            .previewLayout(.sizeThatFits)
    }
}

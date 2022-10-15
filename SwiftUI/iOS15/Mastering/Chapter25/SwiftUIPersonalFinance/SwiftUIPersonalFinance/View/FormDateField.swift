//
//  FormDateField.swift
//  SwiftUIPersonalFinance
//
//  Created by Edgar Adrián on 14/10/22.
//

import SwiftUI

struct FormDateField: View {
    
    let name: String
    
    @Binding var value: Date
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(name.uppercased())
                .font(.system(.subheadline, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.primary)
            
            DatePicker("", selection: $value, displayedComponents: .date)
                .accentColor(.primary)
                .padding(10)
                .border(Color("Border"), width: 1.0)
                .labelsHidden()
        }
    }//body
    
}//FormDateField

struct FormDateField_Previews: PreviewProvider {
    static var previews: some View {
        FormDateField(name: "Nombre", value: .constant(Date()))
    }
}//FormDateField_Previews

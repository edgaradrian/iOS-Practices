//
//  FormTextEditor.swift
//  SwiftUIPersonalFinance
//
//  Created by Edgar Adrián on 14/10/22.
//

import SwiftUI

struct FormTextEditor: View {
    
    let name: String
    var height: CGFloat = 80.0
    
    @Binding var value: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(name.uppercased())
                .font(.system(.subheadline, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.primary)
            
            TextEditor(text: $value)
                .frame(minHeight: height)
                .font(.headline)
                .foregroundColor(.primary)
                .padding()
                .border(Color("Border"), width: 1.0)
        }
    }
    
}//FormTextEditor

struct FormTextEditor_Previews: PreviewProvider {
    static var previews: some View {
        FormTextEditor(name: "Nombre", value: .constant(""))
            .previewLayout(.sizeThatFits)
    }
}//FormTextEditor_Previews

//
//  DescView.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 13/02/22.
//

import SwiftUI

struct DescView: View {
    var description: String
    var backColor: Color
    
    var body: some View {
        Text(description)
            .frame(maxWidth: .infinity)
            .font(.title)
            .foregroundColor(.black)
            .padding()
            .background(backColor)
        
    }
}

struct DescView_Previews: PreviewProvider {
    static var previews: some View {
        DescView(description: "mi descripción previa de prueba", backColor: .orange)
    }
}

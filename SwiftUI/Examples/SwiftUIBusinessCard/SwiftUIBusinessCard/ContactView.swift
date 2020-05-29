//
//  ContactView.swift
//  SwiftUIBusinessCard
//
//  Created by Edgar Ruiz on 29/05/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct ContactView: View {
    
    var imageName: String
    var texto: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    Text(texto)
                }
        )
            .padding(.all)
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView(imageName: "phone.fill", texto: "52+ (55) 57029406").previewLayout(.sizeThatFits)
    }
}

//
//  CustomButton.swift
//  Contacts
//
//  Created by Edgar Ruiz on 08/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    
    var backgroundColor: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(30)
            .background(backgroundColor)
            .clipShape(Circle())
            .foregroundColor(.white)
            .font(.title)
    }
    
}

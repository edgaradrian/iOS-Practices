//
//  CustomButton.swift
//  Contacts
//
//  Created by Edgar Ruiz on 08/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct CustomButton: View {
    
    var imageName: String
    var backgroundColor: Color
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: imageName)
        }
        .buttonStyle(CustomButtonStyle(backgroundColor: backgroundColor))
    
    
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(imageName: "", backgroundColor: Color.red) {
            print("Hi")
        }
    }
}

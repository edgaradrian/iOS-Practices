//
//  CustomButton.swift
//  SwiftUIButtonExample
//
//  Created by Edgar Ruiz on 04/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct CustomButton: View {
    
    var consoleText: String
    var image: String
    var buttonText: String
    
    var body: some View {
        Button(action: {
            print(self.consoleText)
        }) {
            HStack {
                Image(systemName: image)
                    .font(.title)
                Text(buttonText)
                    .fontWeight(.semibold)
                    .font(.title)
            }
            
        }
        .buttonStyle(GradientBackgroundStyle())
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(consoleText: "Delete button tapped!", image: "trash", buttonText: "Delete").previewLayout(.sizeThatFits)
    }
}

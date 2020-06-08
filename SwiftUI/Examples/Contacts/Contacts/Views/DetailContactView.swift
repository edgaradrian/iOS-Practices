//
//  DetailContactView.swift
//  Contacts
//
//  Created by Edgar Ruiz on 08/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct DetailContactView: View {
    var body: some View {
        VStack {
            Text("EA")
                .padding(50)
                .background(Color(.systemGray6))
                .clipShape(Circle())
                .foregroundColor(.white)
                .font(.custom("Monaco", size: 100))
                .padding()
            
            Text("Name")
                .font(.headline)
                .bold()
            Text("Last Name")
                .font(.caption)
            Text("57029406")
                .font(.largeTitle)
            
            HStack {
                CustomButton(imageName: "phone.fill", backgroundColor: Color.green) {
                    print("action")
                }
                
                CustomButton(imageName: "pencil", backgroundColor: Color.blue) {
                    print("action")
                }
            }
        }
    }
}

struct DetailContactView_Previews: PreviewProvider {
    static var previews: some View {
        DetailContactView()
    }
}

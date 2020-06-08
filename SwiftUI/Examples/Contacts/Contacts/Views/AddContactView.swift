//
//  AddContactView.swift
//  Contacts
//
//  Created by Edgar Ruiz on 08/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct AddContactView: View {
        
    @Environment(\.managedObjectContext) var context
    
    @State private var name = ""
    @State private var lastName = ""
    @State private var phone = ""
    
    var body: some View {
        VStack {
            TextField("Name", text: self.$name)
                .padding(10)
            TextField("Last Name", text: self.$lastName)
            .padding(10)
            TextField("Phone", text: self.$phone)
            .padding(10)
                .keyboardType(.phonePad)
            Button(action: {
                
            }) {
                HStack {
                    Image(systemName: "person.crop.circle")
                    Text("Save contact")
                }
                .foregroundColor(.white)
                .font(.title)
            
            }
            .padding(10)
            .background(Color.blue)
            
            Spacer()
            .navigationBarTitle("Add Contact")
        }
    }
}

struct AddContactView_Previews: PreviewProvider {
    static var previews: some View {
        AddContactView()
    }
}

//
//  ContentView.swift
//  Contacts
//
//  Created by Edgar Ruiz on 08/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                   ContactCellView()
                }
                NavigationLink(destination: AddContactView()) {
                    Spacer()
                    Image(systemName: "plus.app.fill")
                    Text("Save contact")
                    Spacer()
                }
                .foregroundColor(.white)
                .font(.title)
                .padding(10)
                .background(Color(.systemTeal))
                .navigationBarTitle("Contacts", displayMode: .inline)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

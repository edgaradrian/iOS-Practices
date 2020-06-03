//
//  ContentView.swift
//  SwiftUINavigationViewExample
//
//  Created by Edgar Adrián on 29/05/20.
//  Copyright © 2020 Edgar Adrián. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var modal = false
    @State private var myMessage = ""
    @State var name = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Say Hello to Second View", text: self.$myMessage)
                    .padding(.horizontal)
                Divider()
                NavigationLink(destination: SecondView(message: myMessage)) {
                    HStack {
                        Image(systemName: "hand.point.right.fill")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                        Text("Go to the Second View")
                            .foregroundColor(.white)
                    }.padding(.all)
                        .background(Color(.systemTeal))
                }.navigationBarTitle("Main View", displayMode: .inline)
                Button("Show modal") {
                    self.modal.toggle()
                }.sheet(isPresented: self.$modal) { 
                    NewSheetView(sheetData: 1, modal: self.$modal, name: self.$name)
                }
                Text("The name is: \(self.name)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

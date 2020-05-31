//
//  ContentView.swift
//  SwiftUINavigationViewExample
//
//  Created by Edgar Adrián on 29/05/20.
//  Copyright © 2020 Edgar Adrián. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: SecondView()) {
                HStack {
                    Image(systemName: "hand.point.right.fill")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                    Text("Go to the Second View")
                        .foregroundColor(.white)
                }.padding(.all)
                    .background(Color(.systemTeal))
            }.navigationBarTitle("Main View", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  MyFirstSwiftUIProject
//
//  Created by Edgar Adrián on 23/08/19.
//  Copyright © 2019 Edgar Adrián. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Edgar Adrián").font(.largeTitle).foregroundColor(.blue)
            HStack {
                Text("Marmolería")
                    .font(.subheadline)
                Spacer()
                Text("México, D.F.")
                    .font(.subheadline)
            }
        }//VStack
        .padding()
    }//body
}//ContentView

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

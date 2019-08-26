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
        VStack {
            MapView().edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage().offset(y: -130).padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Edgar Adrián").font(.largeTitle).foregroundColor(.blue)
                HStack {
                    Text("Marmolería")
                        .font(.subheadline)
                    Spacer()
                    Text("México, D.F.")
                        .font(.subheadline)
                }
            }//VStack Text
            .padding()
            
            Spacer()
        }
    }//body
}//ContentView

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

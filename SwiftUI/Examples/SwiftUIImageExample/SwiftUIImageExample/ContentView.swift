//
//  ContentView.swift
//  SwiftUIImageExample
//
//  Created by Edgar Adrián on 25/05/20.
//  Copyright © 2020 Edgar Adrián. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10){
            Image("Moscow")
            .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
            .clipShape(Circle())
            
            Image("Moscow")
            .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100)
            .clipShape(Ellipse())
            
            Image("Moscow")
            .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100)
            .clipShape(Capsule())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

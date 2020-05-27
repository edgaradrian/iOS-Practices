//
//  ContentView.swift
//  SwiftUIImageNewExample
//
//  Created by Edgar Adrián on 27/05/20.
//  Copyright © 2020 Edgar Adrián. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("Chimalli")
        .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300)
        .clipShape(Circle())
            .opacity(0.5)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

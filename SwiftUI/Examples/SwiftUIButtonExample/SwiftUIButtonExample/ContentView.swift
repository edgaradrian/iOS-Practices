//
//  ContentView.swift
//  SwiftUIButtonExample
//
//  Created by Edgar Ruiz on 04/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CustomButton(consoleText: "Share tapped!", image: "square.and.arrow.up", buttonText: "Share")
            CustomButton(consoleText: "Edit tapped!", image: "square.and.pencil", buttonText: "Edit")
            CustomButton(consoleText: "Delete tapped!", image: "trash", buttonText: "Delete")
        }
        
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

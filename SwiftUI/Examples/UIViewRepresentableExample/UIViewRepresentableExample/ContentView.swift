//
//  ContentView.swift
//  UIViewRepresentableExample
//
//  Created by Edgar Adrián on 18/05/20.
//  Copyright © 2020 Edgar Adrián. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var message = ""
    @State private var textStyle = UIFont.TextStyle.title1

    var body: some View {
        NSTextViewRepresentable(text: $message, textStyle: $textStyle)
    }
}//ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

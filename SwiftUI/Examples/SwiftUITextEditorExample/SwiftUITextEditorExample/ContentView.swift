//
//  ContentView.swift
//  SwiftUITextEditorExample
//
//  Created by Edgar Ruiz on 21/10/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var inputText = ""
    
    var body: some View {
        TextEditor(text: $inputText)
            .font(.title)
            .lineSpacing(20)
            .autocapitalization(.words)
            .disableAutocorrection(true)
            .padding()Cu
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  SwiftUITextEditorExample
//
//  Created by Edgar Ruiz on 21/10/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var inputText = ""
    @State private var wordCount: Int = 0
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            TextEditor(text: $inputText)
                .font(.title)
                .lineSpacing(20)
                .autocapitalization(.words)
                .disableAutocorrection(true)
                .padding()
                .onChange(of: inputText) { value in
                    let words = inputText.split {
                        $0 == " " || $0.isNewline
                    }
                    self.wordCount = words.count
                }
            
            Text("\(wordCount) words")
                .font(.headline)
                .foregroundColor(.secondary)
                .padding(.trailing)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

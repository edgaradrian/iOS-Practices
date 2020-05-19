//
//  NSTextViewRepresentable.swift
//  UIViewRepresentableExample
//
//  Created by Edgar Adrián on 18/05/20.
//  Copyright © 2020 Edgar Adrián. All rights reserved.
//

import UIKit
import SwiftUI

struct NSTextViewRepresentable: UIViewRepresentable {

    @Binding var text: String
    @Binding var textStyle: UIFont.TextStyle
    
    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        textView.font = UIFont.preferredFont(forTextStyle: textStyle)
        textView.delegate = context.coordinator
        return textView
    }//makeUIView
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
        uiView.font = UIFont.preferredFont(forTextStyle: textStyle)
    }//updateUIView
    
    
    func makeCoordinator() -> NSTextViewCoordinator {
        NSTextViewCoordinator($text)
    }
    
    
}//NSTextViewRepresentable

struct NSTextViewRepresentable_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}

//
//  NSTextViewCoordinator.swift
//  UIViewRepresentableExample
//
//  Created by Edgar Adrián on 18/05/20.
//  Copyright © 2020 Edgar Adrián. All rights reserved.
//

import UIKit
import SwiftUI

class NSTextViewCoordinator: NSObject, UITextViewDelegate {
    
    var text: Binding<String>
    
    init(_ text: Binding<String>){
        self.text = text
    }

    func textViewDidChange(_ textView: UITextView) {
        self.text.wrappedValue = textView.text
    }
    
}//NSTextViewCoordinator

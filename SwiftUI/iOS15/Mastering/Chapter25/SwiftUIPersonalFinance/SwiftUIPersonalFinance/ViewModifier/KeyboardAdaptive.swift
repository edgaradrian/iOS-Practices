//
//  KeyboardAdaptive.swift
//  SwiftUIPersonalFinance
//
//  Created by Edgar Adrián on 14/10/22.
//

import SwiftUI
import Combine

struct KeyboardAdaptive: ViewModifier {
    
    @State var currentHeight: CGFloat = 0

    func body(content: Content) -> some View {
        content
            .padding(.bottom, currentHeight)
            .onAppear(perform: handleKeyboardEvents)
    }//body

    private func handleKeyboardEvents() {
        
        NotificationCenter.default.publisher(for: UIResponder.keyboardWillShowNotification
        ).compactMap { (notification) in
            notification.userInfo?["UIKeyboardFrameEndUserInfoKey"] as? CGRect
        }.map { rect in
            rect.height
        }.subscribe(Subscribers.Assign(object: self, keyPath: \.currentHeight))
        
        NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification
        ).compactMap { _ in
            CGFloat.zero
        }.subscribe(Subscribers.Assign(object: self, keyPath: \.currentHeight))

    }//handleKeyboardEvents
    
    
}//KeyboardAdaptive


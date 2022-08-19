//
//  DragState.swift
//  SwiftUITinderLike
//
//  Created by Edgar Adrián on 18/08/22.
//

import UIKit

enum DragState {
    
    case inactive
    case pressing
    case dragging(translation: CGSize)
    
    var translation: CGSize {
        switch self {
        case .inactive, .pressing:
            return .zero
        case .dragging(let translation):
            return translation
        }
    }//translation
    
    var isDragging: Bool {
        switch self {
        case .pressing, .dragging:
            return true
        case .inactive:
            return false
        }
    }//isDragging
    
    var isPressing: Bool {
        switch self {
        case .pressing, .dragging:
            return true
        case .inactive:
            return false
        }
    }//isPressing
    
}//DragState

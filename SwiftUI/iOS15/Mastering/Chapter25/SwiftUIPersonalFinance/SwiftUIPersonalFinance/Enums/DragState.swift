//
//  DragState.swift
//  SwiftUIPersonalFinance
//
//  Created by Edgar Adrián on 17/10/22.
//

import Foundation

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
        case .dragging:
            return true
        case .inactive, .pressing:
            return false
        }
    }
    
}//DragState

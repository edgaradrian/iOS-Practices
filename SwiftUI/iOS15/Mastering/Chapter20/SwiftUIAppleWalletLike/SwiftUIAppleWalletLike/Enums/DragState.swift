//
//  DragState.swift
//  SwiftUIAppleWalletLike
//
//  Created by Edgar Adrián on 30/08/22.
//

import UIKit

enum DragState {
    
    case inactive
    case pressing(index: Int? = nil)
    case dragging(index: Int? = nil, translation: CGSize)
    
    var index: Int? {
        switch self {
        case .inactive:
            return nil
        case .pressing(let index), .dragging(let index, _):
            return index
        }
    }//index
    
    var translation: CGSize {
        switch self {
        case .inactive, .pressing:
            return .zero
        case .dragging(_, let translation):
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

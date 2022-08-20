//
//  AnyTransition+Extensions.swift
//  SwiftUITinderLike
//
//  Created by Edgar Adrián on 20/08/22.
//

import SwiftUI

extension AnyTransition {
    
    static var trailingBottom: AnyTransition {
        
        AnyTransition.asymmetric(insertion: .identity,
                                 removal: AnyTransition.move(edge: .trailing)
            .combined(with: .move(edge: .bottom))
        )
        
        
    }//trailingBottom
    
    
    static var leadingBottom: AnyTransition {
        
        AnyTransition.asymmetric(insertion: .identity,
                                 removal: AnyTransition.move(edge: .leading)
            .combined(with: .move(edge: .bottom))
        )
        
        
    }//leadingBottom
    
}//extension AnyTransition

//
//  View+Extensions.swift
//  GroceryApp
//
//  Created by Edgar Ruiz on 07/10/21.
//

import Foundation
import SwiftUI

extension View {
    
    func embedInNavigationView() -> some View {
        NavigationView {
            self
        }
    }//embedInNavigationView
    
}//extension View

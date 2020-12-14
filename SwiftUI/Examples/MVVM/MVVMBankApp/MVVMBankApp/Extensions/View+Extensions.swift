//
//  View+Extensions.swift
//  MVVMBankApp
//
//  Created by Edgar Adrián on 14/12/20.
//

import Foundation
import SwiftUI

extension View {
    
    func embedInNavigationView() -> some View {
        NavigationView { self }
    }//embedInNavigationView
    
}//View extension

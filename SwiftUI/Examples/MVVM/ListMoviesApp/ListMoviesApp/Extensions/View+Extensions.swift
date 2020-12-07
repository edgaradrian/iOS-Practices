//
//  View+Extensions.swift
//  ListMoviesApp
//
//  Created by Edgar Adrián on 07/12/20.
//

import Foundation
import SwiftUI

extension View {
    
    func embedNavigationView() -> some View {
        return NavigationView { self }
    }
    
}

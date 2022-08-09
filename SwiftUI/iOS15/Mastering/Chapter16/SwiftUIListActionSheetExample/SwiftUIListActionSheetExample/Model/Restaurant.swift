//
//  Restaurant.swift
//  SwiftUIListActionSheetExample
//
//  Created by Edgar Adrián on 06/08/22.
//

import Foundation

struct Restaurant: Identifiable {
    
    var id = UUID()
    var name: String
    var image: String
    var isFavorite = false
    var isCheckIn = false
    
}//Restaurant

//
//  DisplayOrderTypeEnum.swift
//  SwiftUIFormExample
//
//  Created by Edgar Adrián on 03/08/22.
//

import Foundation

enum DisplayOrderType: Int, CaseIterable {
    case alphabetichal = 0
    case favoriteFirst = 1
    case checkInFirst = 2
    
    init(type: Int) {
        switch type {
        case 0:
            self = .alphabetichal
        case 1:
            self = .favoriteFirst
        case 2:
            self = .checkInFirst
        default:
            self = .alphabetichal
        }
    }//init
    
    var text: String {
        switch self {
        case .alphabetichal:
            return "Alfabéticamente"
        case .favoriteFirst:
            return "Primero favoritos"
        case .checkInFirst:
            return "Registrados primero"
        }
    }
    
    func predicate() -> ((Restaurant, Restaurant) -> Bool) {
        switch self {
        case .alphabetichal:
            return { $0.name < $1.name }
        case .favoriteFirst:
            return { $0.isFavorite && !$1.isFavorite }
        case .checkInFirst:
            return { $0.isCheckIn && !$1.isCheckIn }
        }
    }//predicate
    
}//enumv DisplayOrderType

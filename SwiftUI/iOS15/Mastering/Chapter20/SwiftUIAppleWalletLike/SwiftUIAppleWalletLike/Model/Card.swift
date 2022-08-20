//
//  Card.swift
//  SwiftUIAppleWalletLike
//
//  Created by Edgar Adrián on 20/08/22.
//

import Foundation

struct Card: Identifiable {
    var id = UUID()
    var name: String
    var type: CardType
    var number: String
    var expiryDate: String
    var image: String {
        return type.rawValue
    }
}//Card


let myCards = [
    Card(name: "Edgar Adrián", type: .visa, number: "1987 1987 1987 1987", expiryDate: "07/26"),
    Card(name: "Dulce Astrid", type: .master, number: "1988 2020 1988 2020", expiryDate: "10/24"),
    Card(name: "Abril Ruiz", type: .american, number: "2020 1987 1988 2020", expiryDate: "10/25"),
    Card(name: "Alissa Ruiz", type: .chase, number: "2020 1988 1987 2020", expiryDate: "10/24"),
    Card(name: "Miranda Mabel", type: .discover, number: "2016 2020 1987 1988", expiryDate: "09/25")
]

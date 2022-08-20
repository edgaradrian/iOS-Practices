//
//  Transaction .swift
//  SwiftUIAppleWalletLike
//
//  Created by Edgar Adrián on 20/08/22.
//

import Foundation

struct Transaction: Identifiable {
    
    var id = UUID()
    var merchant: String
    var amount: Double
    var date: String
    var icon: String
    
}//Transaction


let transactions = [
    Transaction(merchant: "Conasupo", amount: 22.0, date: "22/08/2022", icon: "star.circle.fill"),
    Transaction(merchant: "Esquites", amount: 26.0, date: "20/08/2022", icon: "cart.fill"),
    Transaction(merchant: "Alitas", amount: 79.0, date: "19/08/2022", icon: "app.gift.fill"),
    Transaction(merchant: "Music", amount: 180.0, date: "16/08/2022", icon: "headphones"),
    Transaction(merchant: "Mubi", amount: 129.0, date: "23/08/2022", icon: "tv")
]

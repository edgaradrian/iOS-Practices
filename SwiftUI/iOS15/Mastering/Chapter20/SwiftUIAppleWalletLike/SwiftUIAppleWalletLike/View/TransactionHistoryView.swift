//
//  TransactionHistoryView.swift
//  SwiftUIAppleWalletLike
//
//  Created by Edgar Adrián on 20/08/22.
//

import SwiftUI

struct TransactionHistoryView: View {
    
    var transactions: [Transaction]
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Detalle de Movimientos")
                .font(.system(size: 25, weight: .black, design: .rounded))
                .padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(transactions) { transaction in
                        TransactionView(transaction: transaction)
                    }
                }
                .padding()
            }
        }
        
    }//body
    
    
    
}//TransactionHistoryView

struct TransactionHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionHistoryView(transactions: transactions)
    }
}

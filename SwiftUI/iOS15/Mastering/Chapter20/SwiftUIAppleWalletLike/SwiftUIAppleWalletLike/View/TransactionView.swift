//
//  TransactionView.swift
//  SwiftUIAppleWalletLike
//
//  Created by Edgar Adrián on 20/08/22.
//

import SwiftUI

struct TransactionView: View {
    
    var transaction: Transaction
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 20)
            .foregroundColor(Color(UIColor.systemGray3))
            .overlay(
                VStack {
                    Spacer()
                    
                    Image(systemName: transaction.icon)
                        .font(.system(size: 50))
                        .padding(.bottom, 10)
                    
                    Text(transaction.merchant)
                        .font(.system(.body, design: .rounded))
                        .bold()
                    
                    Text("$\(String(format: "%.1f", transaction.amount))")
                        .font(.system(.largeTitle, design: .rounded))
                        .bold()
                        .padding(.bottom, 30)
                    
                    Text(transaction.date)
                        .font(.system(.caption, design: .rounded))
                    
                    Spacer()
                    
                    
                }
            )
            .frame(width: 200, height: 300, alignment: .center)
        
    }//body
    
    
}//TransactionView

struct TransactionView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionView(transaction: transactions[0])
            .previewLayout(.sizeThatFits)
    }
}

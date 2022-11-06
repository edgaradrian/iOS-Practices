//
//  ExpenseCard.swift
//  SwiftUIPersonalFinance
//
//  Created by Edgar Adrián on 06/11/22.
//

import SwiftUI

struct ExpenseCard: View {
    
    var expense = 0.0
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .foregroundColor(Color("ExpenseCard"))
                .cornerRadius(15.0)
         
            VStack {
                Text("Gasto")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .fixedSize()
                Text(NumberFormatter.currency(from: expense))
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .minimumScaleFactor(0.1)
                
            }
        }
        .frame(height: 150)
        
    }
    
}//ExpenseCard


struct ExpenseCard_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseCard()
    }
}//ExpenseCard_Previews

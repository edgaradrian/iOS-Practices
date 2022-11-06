//
//  IncomeCard.swift
//  SwiftUIPersonalFinance
//
//  Created by Edgar Adrián on 06/11/22.
//

import SwiftUI

struct IncomeCard: View {
    
    var income = 0.0
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .foregroundColor(Color("IncomeCard"))
                .cornerRadius(15.0)
         
            VStack {
                Text("Ingreso")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.black)
                    .foregroundColor(.white)
                Text(NumberFormatter.currency(from: income))
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .minimumScaleFactor(0.1)
            }
        }
        .frame(height: 150)
        
    }
    
}//IncomeCard

struct IncomeCard_Previews: PreviewProvider {
    static var previews: some View {
        IncomeCard()
    }
}//IncomeCard_Previews

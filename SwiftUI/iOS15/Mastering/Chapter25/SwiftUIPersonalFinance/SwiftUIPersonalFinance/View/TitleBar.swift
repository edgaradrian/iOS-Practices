//
//  TitleBar.swift
//  SwiftUIPersonalFinance
//
//  Created by Edgar Adrián on 17/10/22.
//

import SwiftUI

struct TitleBar: View {
    var viewModel: PaymentDetailViewModel
    
    var body: some View {
        HStack {
            Text("Detalles del Pago")
                .font(.headline)
                .foregroundColor(Color("Heading"))

            Image(systemName: viewModel.typeIcon)
                .foregroundColor(Color("ExpenseCard"))
            
            Spacer()
        }
        .padding()
    }
}//Title BAr

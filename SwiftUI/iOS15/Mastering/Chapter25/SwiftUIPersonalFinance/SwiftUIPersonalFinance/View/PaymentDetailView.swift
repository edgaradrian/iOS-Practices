//
//  PaymentDetailView.swift
//  SwiftUIPersonalFinance
//
//  Created by Edgar Adrián on 05/11/22.
//

import SwiftUI

struct PaymentDetailView: View {
    
    @Binding var isShow: Bool
    
    let payment: PaymentActivity
    
    private let viewModel: PaymentDetailViewModel
    
    init(isShow: Binding<Bool>, payment: PaymentActivity) {
        self._isShow = isShow
        
        self.payment = payment
        self.viewModel = PaymentDetailViewModel(payment: payment)
    }
    
    var body: some View {
        BottomSheet(isShow: $isShow) {
            VStack {
                TitleBar(viewModel: self.viewModel)
                
                Image(self.viewModel.image)
                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: 0, maxWidth: .infinity)
                
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 2) {
                        Text(self.viewModel.name)
                            .font(.system(.headline))
                            .fontWeight(.semibold)
                        Text(self.viewModel.date)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("Subheadline"))
                        Text(self.viewModel.address)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("Subheadline"))
                            .lineLimit(nil)
                            .multilineTextAlignment(.leading)
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                                        
                    VStack(alignment: .trailing) {
                        Text(self.viewModel.amount)
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                    .padding(.trailing)
                }

                Divider()
                    .padding(.horizontal)

                if self.viewModel.memo != "" {
                    Group {
                        Text("Memo")
                            .font(.subheadline)
                            .bold()
                            .padding(.bottom, 5)
                        
                        Text(self.viewModel.memo)
                            .font(.subheadline)
                        
                        Divider()
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                }
                
            }

        }
    }
    
}//PaymentDetailView



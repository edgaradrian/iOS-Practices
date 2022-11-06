//
//  PaymentFormViewModel.swift
//  SwiftUIPersonalFinance
//
//  Created by Edgar Adrián on 05/11/22.
//

import SwiftUI
import Combine

class PaymentFormViewModel: ObservableObject {
    
    @Published var name = ""
    @Published var location = ""
    @Published var amount = ""
    @Published var type = PaymentCategory.expense
    @Published var date = Date.today
    @Published var memo = ""
    
    @Published var isNameValid = false
    @Published var isAmountValid = true
    @Published var isMemoValid = true
    @Published var isFormInputValid = false
    
    private var cancellableSet: Set<AnyCancellable> = []
    
    init(paymentActivity: PaymentActivity?) {
        
        self.name = paymentActivity?.name ?? ""
        self.location = paymentActivity?.address ?? ""
        self.amount = "\(paymentActivity?.amount ?? 0.0)"
        self.memo = paymentActivity?.memo ?? ""
        self.type = paymentActivity?.type ?? .expense
        self.date = paymentActivity?.date ?? Date.today
        
        $name
            .receive(on: RunLoop.main)
            .map { name in
                return name.count > 0
            }
            .assign(to: \.isNameValid, on: self)
            .store(in: &cancellableSet)
                        
        $amount
            .receive(on: RunLoop.main)
            .map { amount in
                guard let validAmount = Double(amount) else {
                    return false
                }
                return validAmount > 0
            }
            .assign(to: \.isAmountValid, on: self)
            .store(in: &cancellableSet)
        
        $memo
            .receive(on: RunLoop.main)
            .map { memo in
                return memo.count < 300
            }
            .assign(to: \.isMemoValid, on: self)
            .store(in: &cancellableSet)
        
        Publishers.CombineLatest3($isNameValid, $isAmountValid, $isMemoValid)
            .receive(on: RunLoop.main)
            .map { (isNameValid, isAmountValid, isMemoValid) in
                return isNameValid && isAmountValid && isMemoValid
            }
            .assign(to: \.isFormInputValid, on: self)
            .store(in: &cancellableSet)
    }
    
}//PaymentFormViewModel


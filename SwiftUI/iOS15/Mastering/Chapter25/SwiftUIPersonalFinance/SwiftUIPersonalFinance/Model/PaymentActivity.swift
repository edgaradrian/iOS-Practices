//
//  PaymentActivity.swift
//  SwiftUIPersonalFinance
//
//  Created by Edgar Adrián on 13/10/22.
//

import Foundation
import CoreData


enum PaymentCategory: Int {
    case income = 0
    case expense = 1
}//PaymentCategory


public class PaymentActivity: NSManagedObject {

    @NSManaged public var paymentId: UUID
    @NSManaged public var date: Date
    @NSManaged public var name: String
    @NSManaged public var address: String?
    @NSManaged public var amount: Double
    @NSManaged public var memo: String?
    @NSManaged public var typeNum: Int32
    
}//PaymentActivity


extension PaymentActivity: Identifiable {
    
    var type: PaymentCategory {
        get {
            return PaymentCategory(rawValue: Int(typeNum)) ?? .expense
        }

        set {
            self.typeNum = Int32(newValue.rawValue)
        }
    }
    
}//PaymentActivity

//
//  Persistence.swift
//  SwiftUIPersonalFinance
//
//  Created by Edgar Adrián on 13/10/22.
//

import Foundation
import CoreData

struct PersistenceController {
    
    static let shared = PersistenceController()

    let container: NSPersistentContainer
    
    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "PersonalFinanceStore")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Error \(error), \(error.userInfo)")
            }
        })
    }//init

    static var preview: PersistenceController = {
        let result = PersistenceController(inMemory: true)
        let viewContext = result.container.viewContext
        
        for index in 0..<10 {
            let newItem = PaymentActivity(context: viewContext)
            newItem.paymentId = UUID()
            newItem.name = "Número de boleto #\(index)"
            newItem.type = index % 2 == 0 ? .income : .expense
            newItem.address = "Marmolería 292, México, Distrito Federal"
            newItem.amount = 1870.0
            newItem.date = .today
            newItem.memo = "Ojalá viaje pronto"
        }
        
        do {
            try viewContext.save()
        } catch {
            let nsError = error as NSError
            fatalError("Error \(nsError), \(nsError.userInfo)")
        }
        return result
    }()//preview
    
}//PersistenceController

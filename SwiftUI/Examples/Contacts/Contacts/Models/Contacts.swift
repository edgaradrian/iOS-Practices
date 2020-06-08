//
//  Contacts.swift
//  Contacts
//
//  Created by Edgar Ruiz on 08/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import Foundation
import CoreData

class Contacts: NSManagedObject, Identifiable {
    @NSManaged public var name : String
    @NSManaged public var lastname : String
    @NSManaged public var phone : String
    @NSManaged public var vowels : String
}

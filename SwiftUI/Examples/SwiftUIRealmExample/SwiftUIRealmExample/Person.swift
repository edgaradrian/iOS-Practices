//
//  Person.swift
//  SwiftUIRealmExample
//
//  Created by Edgar Ruiz on 30/10/20.
//

import Foundation
import RealmSwift

class Person: Object {
    @objc dynamic var name = ""
    @objc dynamic var age = ""
}

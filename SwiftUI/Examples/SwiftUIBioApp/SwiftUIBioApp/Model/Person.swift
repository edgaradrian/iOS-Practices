//
//  Person.swift
//  SwiftUIBioApp
//
//  Created by Edgar Adrián on 18/08/20.
//  Copyright © 2020 Edgar Adrián. All rights reserved.
//

import Foundation

struct Person: Identifiable, Decodable {
    
    var id: String { name }
    let name: String
    let description: String
    let imageName: String
    let shortDescription: String
    
}//Person

extension Person: Equatable {
    
    static func ==(lhs: Person, rhs: Person) -> Bool {
        lhs.id == rhs.id
    }//func ==
    
}//extension Person

struct PersonSection: Identifiable, Decodable {
    
    var id: String { name }
    
    let name: String
    let picturesImageName: [String]
    
}//PersonSection




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



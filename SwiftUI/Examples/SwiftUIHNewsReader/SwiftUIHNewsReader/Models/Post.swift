//
//  Post.swift
//  SwiftUIHNewsReader
//
//  Created by Edgar Ruiz on 30/05/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import Foundation

struct Post: Decodable, Identifiable {
    let id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let points: Int
    let url: String
}//Post



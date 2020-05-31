//
//  Post.swift
//  SwiftUIHNewsReader
//
//  Created by Edgar Ruiz on 30/05/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import Foundation

struct Post: Identifiable {
    let id: String
    let title: String
}//Post


let posts = [
    Post(id: "1", title: "item1"),
    Post(id: "2", title: "item2"),
    Post(id: "3", title: "item3")
]

//
//  PostData.swift
//  SwiftUIHNewsReader
//
//  Created by Edgar Ruiz on 31/05/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

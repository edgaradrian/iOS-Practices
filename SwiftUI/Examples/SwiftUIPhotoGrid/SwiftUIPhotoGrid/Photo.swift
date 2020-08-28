//
//  Photo.swift
//  SwiftUIPhotoGrid
//
//  Created by Edgar Adrián on 27/08/20.
//

import Foundation

struct Photo: Identifiable {
    var id = UUID()
    var name: String
}//Photo

let samplePhotos = (1...20).map { Photo(name: "coffee-\($0)") }


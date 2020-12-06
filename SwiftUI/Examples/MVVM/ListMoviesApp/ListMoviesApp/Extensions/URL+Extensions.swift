//
//  URL+Extensions.swift
//  ListMoviesApp
//
//  Created by Edgar Adrián on 05/12/20.
//

import Foundation

extension URL {
    
    static func forMoviesByName(_ name: String) -> URL? {
        return URL(string: "https://www.omdbapi.com/?s=\(name)&apikey=\(Constants.API_KEY)")
    }
    
}

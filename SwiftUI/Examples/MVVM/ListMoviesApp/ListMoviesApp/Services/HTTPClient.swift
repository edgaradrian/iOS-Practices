//
//  HTTPClient.swift
//  ListMoviesApp
//
//  Created by Edgar Adrián on 05/12/20.
//

import Foundation

enum MovieError: Error {
    case badURL
    case noData
    case decodingError
}//MovieError

class HTTPClient {
    
    func getMovieDetailBy(imdbId: String, completition: @escaping (Result<MovieDetail?,MovieError>) -> Void) {
        
        guard let url = URL.forMoviesByImdbId(imdbId) else {
            return completition(.failure(.badURL))
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let data = data, error == nil else {
                return completition(.failure(.noData))
            }
            
            guard let movieDetailResponse = try? JSONDecoder().decode(MovieDetail.self, from: data) else {
                return completition(.failure(.noData))
            }
            
            completition(.success(movieDetailResponse))
            
        }.resume()
        
    }//getMovieDetailsBy
    
    func getMoviesBy(search: String, completion: @escaping (Result<[Movie]?,MovieError>) -> Void) {
        
        guard let url = URL.forMoviesByName(search) else {
            return completion(.failure(.badURL))
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let data = data, error == nil else {
                return completion(.failure(.noData))
            }
            
            guard let movieResponse = try? JSONDecoder().decode(MovieResponse.self, from: data) else {
                return completion(.failure(.decodingError))
            }
            
            completion(.success(movieResponse.movies))
            
        }.resume()
        
    }//getMoviesBy
    
}//HTTPClient

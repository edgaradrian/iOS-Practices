//
//  MovieListViewModel.swift
//  ListMoviesApp
//
//  Created by Edgar Adrián on 06/12/20.
//

import Foundation

struct MovieViewModel {
    
    let movie: Movie
    
    var title: String {
        movie.title
    }
    
    var year: String {
        movie.year
    }
    
    var imdbId: String {
        movie.imdbId
    }
    
    var poster: String {
        movie.poster
    }
    
}//MovieViewModel

class MovieListViewModel: ViewModelBase {
    
    @Published var movies = [MovieViewModel]()
    let httpClient = HTTPClient()
    
    func searchByName(_ name: String) {
        
        if name.isEmpty {
            return
        }
        
        self.loadingState = .loading
        
        httpClient.getMoviesBy(search: name) { (result) in
            switch result {
            case .success(let movies):
                if let movies = movies {
                    DispatchQueue.main.async {
                        self.movies = movies.map(MovieViewModel.init)
                        self.loadingState = .success
                    }
                }
            case .failure(let error):
                print(error.localizedDescription)
                DispatchQueue.main.async {
                    self.loadingState = .failed
                }
            }
        }
    }
    
}//MovieListViewModel

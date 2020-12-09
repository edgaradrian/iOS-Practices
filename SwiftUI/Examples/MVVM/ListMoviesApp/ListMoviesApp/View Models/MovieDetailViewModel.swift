//
//  MovieDetailViewModel.swift
//  ListMoviesApp
//
//  Created by Edgar Adrián on 08/12/20.
//

import Foundation

class MovieDetailViewModel: ObservableObject {
    
    private var movieDetail: MovieDetail?
    @Published var loadingState = LoadingState.loading
    
    private var httpClient = HTTPClient()
    
    init(movieDetail: MovieDetail? = nil) {
        self.movieDetail = movieDetail
    }// init
    
    func getDetailByImdbId(imdbId: String) {
        httpClient.getMovieDetailBy(imdbId: imdbId) { (result) in
            switch result {
            case .success(let movie):
                DispatchQueue.main.async {
                    self.movieDetail = movie
                    self.loadingState = LoadingState.success
                }
               
            case .failure(let error):
                print(error.localizedDescription)
                DispatchQueue.main.async {
                    self.loadingState = LoadingState.failed
                }
            }
        }
    }
    
    var title: String {
        self.movieDetail?.title ?? ""
    }
    
    var poster: String {
        self.movieDetail?.poster ?? ""
    }
    
    var plot: String {
        self.movieDetail?.plot ?? ""
    }
    
    var rating: Int {
        get {
            let ratingAsDouble = Double(self.movieDetail?.imdbRating ?? "0.0")
            return Int(ceil(ratingAsDouble ?? 0.0))
        }
    }
    
    var director: String {
        self.movieDetail?.director ?? ""
    }
    
}//MovieDetailViewModel

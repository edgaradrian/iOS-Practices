//
//  MovieListView.swift
//  ListMoviesApp
//
//  Created by Edgar Adrián on 07/12/20.
//

import SwiftUI

struct MovieListView: View {
    
    let movies: [MovieViewModel]
    
    var body: some View {
        List(self.movies, id: \.imdbId) { movie in
            Text(movie.title)
        }
    }

}//MovieListView

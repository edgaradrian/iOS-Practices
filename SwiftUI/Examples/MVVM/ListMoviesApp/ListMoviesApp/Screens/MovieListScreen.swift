//
//  MovieListScreen.swift
//  ListMoviesApp
//
//  Created by Edgar Adrián on 07/12/20.
//

import SwiftUI

struct MovieListScreen: View {
    
    @ObservedObject private var movieListVM: MovieListViewModel
    
    init() {
        movieListVM = MovieListViewModel()
    }
    
    var body: some View {
        VStack {
            MovieListView(movies: self.movieListVM.movies)
        }
    }
}

struct MovieListScreen_Previews: PreviewProvider {
    static var previews: some View {
        MovieListScreen()
    }
}

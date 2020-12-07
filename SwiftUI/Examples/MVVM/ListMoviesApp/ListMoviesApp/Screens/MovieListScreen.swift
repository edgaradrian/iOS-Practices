//
//  MovieListScreen.swift
//  ListMoviesApp
//
//  Created by Edgar Adrián on 07/12/20.
//

import SwiftUI

struct MovieListScreen: View {
    
    @ObservedObject private var movieListVM: MovieListViewModel
    @State private var movieName: String = ""
    
    init() {
        movieListVM = MovieListViewModel()
    }
    
    var body: some View {
        VStack {
            
            TextField("Search", text: $movieName) { (_) in
                
            } onCommit: {
                self.movieListVM.searchByName(self.movieName)
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())

            Spacer()
            
            MovieListView(movies: self.movieListVM.movies)
                .navigationBarTitle("Movies")
        }.embedNavigationView()
    }
}

struct MovieListScreen_Previews: PreviewProvider {
    static var previews: some View {
        MovieListScreen()
    }
}

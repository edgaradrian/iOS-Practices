//
//  MovieDetailScreen.swift
//  ListMoviesApp
//
//  Created by Edgar Adrián on 08/12/20.
//

import SwiftUI

struct MovieDetailScreen: View {
    
    let imdbId: String
    @ObservedObject var movieDetailVM = MovieDetailViewModel()
    
    var body: some View {
        VStack {
            
            if self.movieDetailVM.loadingState == .loading {
                LoadingView()
            } else if self.movieDetailVM.loadingState == .failed {
                FailedView()
            } else if self.movieDetailVM.loadingState == .success {
                MovieDetailView(movieDetailVM: self.movieDetailVM)
            }
            
        }
        .onAppear {
            self.movieDetailVM.getDetailByImdbId(imdbId: self.imdbId)
        }
    }
}


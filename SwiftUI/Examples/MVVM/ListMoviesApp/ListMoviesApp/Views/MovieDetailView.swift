//
//  MovieDetailView.swift
//  ListMoviesApp
//
//  Created by Edgar Adrián on 08/12/20.
//

import SwiftUI

struct MovieDetailView: View {
    
    let movieDetailVM: MovieDetailViewModel
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                
                URLImage(url: movieDetailVM.poster)
                    .cornerRadius(10)
                
                Text(movieDetailVM.title)
                    .font(.title)
                Text(movieDetailVM.plot)
                Text("Director")
                    .fontWeight(.bold)
                HStack {
                    Rating(rating: .constant(movieDetailVM.rating))
                    Text("\(movieDetailVM.rating)/10")
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle(self.movieDetailVM.title)
        }
        
    }
}


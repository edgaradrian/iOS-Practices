//
//  Rating.swift
//  ListMoviesApp
//
//  Created by Edgar Adrián on 04/12/20.
//

import SwiftUI

struct Rating: View {
    
    @Binding var rating: Int?
    
    private func startType(index: Int) -> String {
        
        if let rating = self.rating {
            return index <= rating ? "star.fill" : "star"
        } else {
            return "star"
        }
        
        
    }//startType
    
    var body: some View {
        HStack {
            ForEach(1...10, id: \.self) { index in
                Image(systemName: startType(index: index))
                    .foregroundColor(.yellow)
                    .onTapGesture {
                        self.rating = index
                    }
            }
        }
    }
}

struct Rating_Previews: PreviewProvider {
    static var previews: some View {
        Rating(rating: .constant(1))
    }
}

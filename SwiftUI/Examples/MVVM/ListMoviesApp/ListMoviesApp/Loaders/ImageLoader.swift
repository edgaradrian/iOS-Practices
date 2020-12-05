//
//  ImageLoader.swift
//  ListMoviesApp
//
//  Created by Edgar Adrián on 04/12/20.
//

import Foundation

class ImageLoader: ObservableObject {
    
    @Published var downloadedData: Data?
    
    func downloadImage(url: String) {
        
        guard let imgURL = URL(string: url) else {
            return
        }

        URLSession.shared.dataTask(with: imgURL) { (data, _, error) in
            
            guard let data = data, error == nil else {
                return
            }
            
            DispatchQueue.main.async {
                self.downloadedData = data
            }
            
        }.resume()
        
        
    }//downloadImage
    
}//ImageLoader

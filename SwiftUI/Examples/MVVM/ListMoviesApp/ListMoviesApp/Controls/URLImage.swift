//
//  URLImage.swift
//  ListMoviesApp
//
//  Created by Edgar Adrián on 04/12/20.
//

import SwiftUI

struct URLImage: View {
    
    let url: String
    let placeholder: String
    
    @ObservedObject var imageLoader = ImageLoader()
    
    init(url: String, placeholder: String = "No name") {
        self.url = url
        self.placeholder = placeholder
        self.imageLoader.downloadImage(url: self.url)
    }
    
    var body: some View {
        if let data = self.imageLoader.downloadedData {
            return Image(uiImage: UIImage(data: data)!)
                .resizable()
        } else {
            return Image("nomovie")
                .resizable()
        }
    }
    
}//URLImage

struct URLImage_Previews: PreviewProvider {
    static var previews: some View {
        URLImage(url: "https://es.wikipedia.org/wiki/Historia_del_cine#/media/Archivo:Institut_Lumi%C3%A8re_-_CINEMATOGRAPHE_Camera.jpg")
    }
}

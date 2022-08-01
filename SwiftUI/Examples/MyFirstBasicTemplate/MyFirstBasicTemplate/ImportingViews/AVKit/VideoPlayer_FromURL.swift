//
//  VideoPlayer_FromURL.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 01/08/22.
//

import SwiftUI
import AVKit

struct VideoPlayer_FromURL: View {
    
    let player = AVPlayer(url: URL(string: "https://www.dailymotion.com/video/x3of2z6")!)
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Reproductor de Vídeo", subtitulo: "Desde URL", description: "Se pueden ver vídeos usando una URL")
            
            VideoPlayer(player: player)
        }
        .font(.title)
    }
}

struct VideoPlayer_FromURL_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayer_FromURL()
    }
}

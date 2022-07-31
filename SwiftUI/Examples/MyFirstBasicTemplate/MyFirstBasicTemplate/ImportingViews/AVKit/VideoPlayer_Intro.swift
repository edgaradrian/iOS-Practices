//
//  VideoPlayer_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 31/07/22.
//

import SwiftUI
import AVKit

struct VideoPlayer_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Reproductor de Vídeo", subtitulo: "Introducción", description: "Se puede reproducir vídeos con una vista VideoPlayer")
            
            VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "XMen", withExtension: "mov")!))
        }
        .font(.title)
    }
}

struct VideoPlayer_Intro_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayer_Intro()
    }
}

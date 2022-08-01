//
//  VideoPlayer_Overlay.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 01/08/22.
//

import SwiftUI
import AVKit

struct VideoPlayer_Overlay: View {
    
    let player = AVPlayer(url: Bundle.main.url(forResource: "XMen", withExtension: "mov")!)
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Reproductor de vídeo", subtitulo: "Superposición", description: "Se puede sobreponer cualquier vista que se desee en el VideoPlayer usando el segundo parámetro del inicializador")
            
            
            VideoPlayer(player: player) {
                VStack {
                    Text("Vídeo")
                        .foregroundColor(.white)
                        .opacity(0.5)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                
            }
            
            
            
        }
        .font(.title)
        
        
    }
}

struct VideoPlayer_Overlay_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayer_Overlay()
    }
}

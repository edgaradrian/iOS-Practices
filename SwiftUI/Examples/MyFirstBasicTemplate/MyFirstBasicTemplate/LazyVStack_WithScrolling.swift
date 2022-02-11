//
//  LazyVStack_WithScrolling.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 11/02/22.
//

import SwiftUI

struct LazyVStack_WithScrolling: View {
    
    private let players = [
        Player(name: "Aaron Rodgers", image_name: "ARod"),
        Player(name: "Davante Adams", image_name: "DA"),
        Player(name: "Aaron Jones", image_name: "AJ"),
        Player(name: "Kenny Clark", image_name: "KC")
                ]
    var body: some View {
        VStack(spacing: 10) {
            HeaderView(titulo: "LazyVStack", subtitulo: "Con ScrollView", description: "The LazyVStack es aprovechado con muchas vistas que hacen scroll")
            
            ScrollView {
                LazyVStack(spacing: 5) {
                    ForEach(players) { player in
                        Image("\(player.image_name)")
                            .resizable()
                            .frame(width: 300, height: 300)
                    }
                }
            }
            
            Spacer()
            
        }
        .font(.title)
    }
    
}

struct LazyVStack_WithScrolling_Previews: PreviewProvider {
    static var previews: some View {
        LazyVStack_WithScrolling()
    }
}

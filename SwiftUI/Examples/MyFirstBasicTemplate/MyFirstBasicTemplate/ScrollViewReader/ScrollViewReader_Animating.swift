//
//  ScrollViewReader_Animating.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 23/02/22.
//

import SwiftUI

struct ScrollViewReader_Animating: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "ScrollViewReader", subtitulo: "Animation", description: "Puedes animar el desplazamiento con withAnimation alrededor de la función scroolTo")
            
            ScrollViewReader { scrollViewProxy in
                Button("Animate scrolling to bottom") {
                    withAnimation {
                        scrollViewProxy.scrollTo(50)
                    }
                }
                
                ScrollView(showsIndicators: true) {
                    ForEach(1..<51) { index in
                        getImage(for: index)
                            .font(.largeTitle)
                            .frame(height: 70)
                            .id(index)
                    }
                }
                
                Button("Animate Scrolling to top") {
                    withAnimation {
                        scrollViewProxy.scrollTo(1, anchor: .top)
                    }
                }
                
            }
            
        }
        .font(.title)
    }
    
    func getImage(for index: Int) -> some View {
        if index == 1 || index == 50 {
            return Image(systemName: "\(index).square.fill")
                .foregroundColor(.red)
        }
        return Image(systemName: "\(index).square")
            .foregroundColor(.primary)
    }//getImage
    
}

struct ScrollViewReader_Animating_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReader_Animating()
    }
}

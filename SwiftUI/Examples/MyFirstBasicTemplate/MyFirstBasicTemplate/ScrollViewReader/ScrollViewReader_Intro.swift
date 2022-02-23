//
//  ScrollViewReader_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 23/02/22.
//

import SwiftUI

struct ScrollViewReader_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "ScrollViewReader", subtitulo: "Introduction", description: "Usa el ScrollViewReader para acceder a la función y así programaticamente deslizarte a la vista especifica")
            
            ScrollViewReader { scrollViewProxy in
                Button("Scroll To Bottom") {
                    scrollViewProxy.scrollTo(50)
                }
                ScrollView {
                    ForEach(1..<51) { index in
                        getImage(for: index)
                            .font(.largeTitle)
                            .frame(height: 70)
                            .id(index)
                    }
                }
                Button("Scroll To Top") {
                    scrollViewProxy.scrollTo(1)
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
    }
    
}

struct ScrollViewReader_Intro_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReader_Intro()
    }
}

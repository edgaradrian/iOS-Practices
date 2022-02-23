//
//  ScrollViewReader_Anchor.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 23/02/22.
//

import SwiftUI

struct ScrollViewReader_Anchor: View {
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(titulo: "ScrollViewReader", subtitulo: "Anchor", description: "Puedes controlar la posición de dónde quieres que la vista vaya al llamar el scrollTo")
            
            ScrollViewReader { scrollViewProxy in
                
                Button("Scroll 25 to Top") {
                    scrollViewProxy.scrollTo(25, anchor: .top)
                }
                
                HStack(spacing: 20) {
                    
                    Button("Scroll 25 to Center") {
                        scrollViewProxy.scrollTo(25, anchor: .center)
                    }
                    
                    ScrollView {
                        ForEach(1..<51) { index in
                            Image(systemName: "\(index).square.fill")
                                .font(.largeTitle)
                                .frame(height: 70)
                                .foregroundColor(index == 25 ? .red : .gray)
                                .id(index)
                        }
                    }
                }
                
                Button("Scroll 25 to Bottom") {
                    scrollViewProxy.scrollTo(25, anchor: .bottom)
                }
                
            }
            
        }
        .font(.title)
    }
}

struct ScrollViewReader_Anchor_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReader_Anchor()
    }
}

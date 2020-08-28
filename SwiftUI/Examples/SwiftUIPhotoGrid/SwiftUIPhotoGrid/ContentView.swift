//
//  ContentView.swift
//  SwiftUIPhotoGrid
//
//  Created by Edgar Adrián on 27/08/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var gridLayout: [GridItem] = [ GridItem() ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridLayout, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
                    ForEach(samplePhotos.indices) { index in
                        
                        Image(samplePhotos[index].name)
                            .resizable()
                            .scaledToFill()
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .frame(height: 200)
                            .cornerRadius(10)
                            .shadow(color: Color.primary.opacity(0.3),radius: 1)
                        
                    }
                }
                .padding(.all, 10)
            }
            .navigationTitle("Coffee Feed")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

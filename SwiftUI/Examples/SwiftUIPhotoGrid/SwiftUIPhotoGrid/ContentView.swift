//
//  ContentView.swift
//  SwiftUIPhotoGrid
//
//  Created by Edgar Adrián on 27/08/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var gridLayout: [GridItem] = [ GridItem(.adaptive(minimum: 100)), GridItem(.flexible()) ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridLayout, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
                    ForEach(sampleCafes) { cafe in
                        
                        Image(cafe.image)
                            .resizable()
                            .scaledToFill()
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .frame(height: gridLayout.count == 1 ? 200 : 100)
                            .cornerRadius(10)
                            .shadow(color: Color.primary.opacity(0.3),radius: 1)
                        
                        LazyVGrid(columns: [GridItem(.adaptive(minimum: 50))]) {
                            ForEach(cafe.coffeePhotos) { photo in
                                
                                Image(photo.name)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .frame(height: 50)
                                    .cornerRadius(10)
                                
                            }
                        }
                        .frame(minHeight: 0, maxHeight: .infinity, alignment: .top)
                        .animation(.easeIn)
                        
                    }
                }
                .padding(.all, 10)
                .animation(.interactiveSpring())
            }
            .navigationTitle("Coffee Feed")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        self.gridLayout = Array(repeating: .init(.flexible()), count: self.gridLayout.count % 4 + 1)
                    }) {
                        Image(systemName: "square.grid.2x2")
                            .font(.title)
                            .foregroundColor(.black)
                    }
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

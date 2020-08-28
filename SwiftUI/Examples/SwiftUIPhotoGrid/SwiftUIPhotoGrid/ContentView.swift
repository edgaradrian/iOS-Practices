//
//  ContentView.swift
//  SwiftUIPhotoGrid
//
//  Created by Edgar Adrián on 27/08/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var gridLayout = [ GridItem() ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridLayout, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
                    ForEach(samplePhotos.indices) { index in
                        
                        Image(samplePhotos[index].name)
                            .resizable()
                            .scaledToFill()
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .frame(height: gridLayout.count == 1 ? 200 : 100)
                            .cornerRadius(10)
                            .shadow(color: Color.primary.opacity(0.3),radius: 1)
                        
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

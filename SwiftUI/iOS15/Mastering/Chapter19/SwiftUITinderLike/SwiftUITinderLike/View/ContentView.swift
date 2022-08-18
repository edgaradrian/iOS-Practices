//
//  ContentView.swift
//  SwiftUITinderLike
//
//  Created by Edgar Adrián on 18/08/22.
//

import SwiftUI

struct ContentView: View {
    
    var cardViews: [CardView] = {
       
        var views = [CardView]()
        
        for trip in trips {
            views.append(CardView(image: trip.image, title: trip.destination))
        }
        
        return views
        
    }()
    
    var body: some View {
        
        VStack {
            
            TopBarMenu()
            
            ZStack {
                ForEach(cardViews) { cardView in
                    cardView
                }
            }
            
            
            Spacer(minLength: 20)
            
            BottomBarMenu()
            
        }
        
    }
}//ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

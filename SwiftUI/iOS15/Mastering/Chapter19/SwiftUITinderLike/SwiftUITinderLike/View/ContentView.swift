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
        
        for index in 0..<2 {
            views.append(CardView(image: trips[index].image, title: trips[index].destination))
        }
        
        return views
        
    }()
    
    var body: some View {
        
        VStack {
            
            TopBarMenu()
            
            ZStack {
                ForEach(cardViews) { cardView in
                    cardView
                        .zIndex(self.isTopCard(cardView: cardView) ? 1 : 0)
                }
            }
            
            
            Spacer(minLength: 20)
            
            BottomBarMenu()
            
        }
        
    }//body
    
    private func isTopCard(cardView: CardView) -> Bool {
        
        guard let index = cardViews.firstIndex(where: {
            $0.id == cardView.id
        }) else {
            return false
        }
        
        return index == 0
        
    }//isTopCard
    
}//ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

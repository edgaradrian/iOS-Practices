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
    
    @GestureState private var dragState = DragState.inactive
    
    var body: some View {
        
        VStack {
            
            TopBarMenu()
            
            ZStack {
                ForEach(cardViews) { cardView in
                    cardView
                        .zIndex(self.isTopCard(cardView: cardView) ? 1 : 0)
                        .offset(x: self.dragState.translation.width, y: self.dragState.translation.height)
                        .scaleEffect(self.dragState.isDragging ? 0.95 : 1)
                        .rotationEffect(.degrees(Double( self.dragState.translation.width / 10)))
                        .animation(.interpolatingSpring(stiffness: 180, damping: 100), value: self.dragState.translation)
                        .gesture(
                            LongPressGesture(minimumDuration: 0.01)
                                .sequenced(before: DragGesture())
                                .updating($dragState, body: { value, state, transaction in
                                    
                                    switch value {
                                    case .first(true):
                                        state = .pressing
                                    case .second(true, let drag):
                                        state = .dragging(translation: drag?.translation ?? .zero )
                                    default:
                                        break
                                    }
                                    
                                })
                        )
                }
            }
            
            
            Spacer(minLength: 20)
            
            BottomBarMenu()
                .opacity(self.dragState.isDragging ? 0.0 : 1.0)
                .animation(.default, value: self.dragState.translation)
            
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

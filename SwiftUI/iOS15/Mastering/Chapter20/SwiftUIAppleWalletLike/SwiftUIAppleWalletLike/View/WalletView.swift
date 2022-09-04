//
//  WalletView.swift
//  SwiftUIAppleWalletLike
//
//  Created by Edgar Adrián on 29/08/22.
//

import SwiftUI

struct WalletView: View {
    
    var cards: [Card] = myCards
    @State private var isCardPresented = false
    
    @State private var isCardPressed = false
    @State private var selectedCard: Card?
    
    @GestureState private var dragState = DragState.inactive
    private let cardOffset: CGFloat = 50.0
    
    var body: some View {
        VStack {
            TopNavBar()
                .padding(.bottom)
            
            Spacer()
            
            ZStack {
                if isCardPresented {
                    ForEach(cards) { card in
                        CardView(card: card)
                            .offset(self.offset(for: card))
                            .padding(.horizontal, 35)
                            .zIndex(self.zIndex(for: card))
                            .transition(AnyTransition.slide.combined(with: .move(edge: .leading)).combined(with: .opacity))
                            .animation(self.transitionAnimation(for: card))
                            .gesture(
                                TapGesture()
                                    .onEnded({ _ in
                                        withAnimation(.easeOut(duration: 0.15).delay(0.1)) {
                                            self.isCardPressed.toggle()
                                            self.selectedCard = self.isCardPressed ? card : nil
                                        }
                                    })
                                    .exclusively(before: LongPressGesture(minimumDuration: 0.05)
                                    .sequenced(before: DragGesture())
                                    .updating(self.$dragState, body: { value, state, transaction in
                                        switch value {
                                        case .first(true):
                                            state = .pressing(index: self.index(for: card))
                                        case .second(true, let drag):
                                            state = .dragging(index: self.index(for: card), translation: drag?.translation ?? .zero)
                                        default:
                                            break
                                        }
                                        
                                    })
                                    .onEnded({ value in
                                        
                                        guard case .second(true, let drag?) = value else {
                                            return
                                        }

                                    })

                                )
                            )
                    }
                }
            }
            .onAppear {
                self.isCardPresented.toggle()
            }
            
            Spacer()
            
            if isCardPressed {
                TransactionHistoryView(transactions: transactions)
                    .padding(.top, 10)
                    .transition(.move(edge: .bottom))
            }
            
        }
    }//body
    
    private func index(for card: Card) -> Int? {
        
        guard let index = cards.firstIndex(where: { $0.id == card.id }) else {
            return nil
        }
        
        return index
        
    }//index
    
    private func zIndex(for card: Card) -> Double {
        
        guard let cardIndex = index(for: card) else {
            return 0.0
        }
        
        let defaultZIndex = -Double(cardIndex)
        
        if let draggingIndex = dragState.index, cardIndex == draggingIndex {
            return defaultZIndex + Double(dragState.translation.height/self.cardOffset)
        }
        
        return defaultZIndex
        
    }//zIndex
    
    private func offset(for card: Card) -> CGSize {
        
        guard let cardIndex = index(for: card) else {
            return CGSize()
        }
        
        if isCardPressed {
            guard let selectedCard = selectedCard, let selectedCardIndex = index(for: selectedCard) else {
                return .zero
            }
            
            if cardIndex >= selectedCardIndex {
                return .zero
            }
            
            let offset = CGSize(width: 0, height: 1400)
            
            return offset

        }
        
        var pressedOffset = CGSize.zero
        var dragOffsetY: CGFloat = 0.0
        
        if let draggingIndex = dragState.index,
            cardIndex == draggingIndex {
            pressedOffset.height = dragState.isPressing ? -20 : 0
            
            switch dragState.translation.width {
            case let width where width < -10: pressedOffset.width = -20
            case let width where width > 10: pressedOffset.width = 20
            default: break
            }

            dragOffsetY = dragState.translation.height
        }
        
        return CGSize(width: 0 + pressedOffset.width, height: -50 * CGFloat(cardIndex) + pressedOffset.height + dragOffsetY)
        
    }//offset
    
    private func transitionAnimation(for card: Card) -> Animation {
        
        var delay = 0.0
        
        if let index = index(for: card) {
            delay = Double(cards.count - index) * 0.1
        }
        
        let animation = Animation.spring(response: 0.1, dampingFraction: 0.8, blendDuration: 0.02)
            .delay(delay)
        
        return animation
        
    }//transitionAnimation
    
}//WalletView

struct WalletView_Previews: PreviewProvider {
    static var previews: some View {
        WalletView()
    }
}

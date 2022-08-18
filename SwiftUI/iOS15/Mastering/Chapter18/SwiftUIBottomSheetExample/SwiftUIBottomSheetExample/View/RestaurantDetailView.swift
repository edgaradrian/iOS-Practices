//
//  RestaurantDetailView.swift
//  SwiftUIBottomSheetExample
//
//  Created by Edgar Adrián on 11/08/22.
//

import SwiftUI

struct RestaurantDetailView: View {
    
    let restaurant: Restaurant
    @GestureState private var dragState = DragState.inactive
    @State private var positionOffSet: CGFloat = 0.0
    @State private var viewState = ViewState.half
    @Binding var isShow: Bool
    @State private var scrollOffset: CGFloat = 0.0
  
    var body: some View {
        
        GeometryReader { g in
            VStack {
                GeometryReader { scrollViewProxy in
                    Color.clear.preference(key: ScrollOffsetKey.self, value: scrollViewProxy.frame(in: .named("scrollview")).minY )
                }
                .frame(height: 0)
                Spacer()
                HandleBar()
                ScrollView {
                    TitleBar()
                    HeaderView(restaurant: self.restaurant)
                    DetailInfoView(icon: "map", info: self.restaurant.location) .padding(.top)
                    DetailInfoView(icon: "phone", info: self.restaurant.phone)
                    DetailInfoView(icon: nil, info: self.restaurant.description)
                        .padding(.top)
                        .padding(.bottom, 100)
                }
                .background(Color.white)
                .cornerRadius(10, antialiased: true)
                .disabled(self.viewState == .half)
                .coordinateSpace(name: "scrollview")
                
            }
            .offset(y: g.size.height/2 + self.dragState.translation.height + self.positionOffSet)
            //.offset(y: self.scrollOffset)
            .animation(.interpolatingSpring(stiffness: 200.00, damping: 25.0, initialVelocity: 10.0))
            .edgesIgnoringSafeArea(.all)
            .onPreferenceChange(ScrollOffsetKey.self) { value in
                if self.viewState == .full {
                    self.scrollOffset = value > 0 ? value : 0
                    
                    if self.scrollOffset > 120 {
                        self.positionOffSet = 0
                        self.scrollOffset = 0
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            self.viewState = .half
                        }
                    }
                    
                }
            }
            .gesture(
                DragGesture()
                    .updating(self.$dragState, body: { value, state, transaction in
                        state = .dragging(translation: value.translation)
                    })
                    .onEnded({ value in
                        if self.viewState == .half {
                            if value.translation.height < -g.size.height * 0.25 {
                                self.positionOffSet = -g.size.height/2 + 50
                                self.viewState = .full
                            }
                            
                            if value.translation.height > g.size.height * 0.3 {
                                self.isShow = false
                            }
                        }
                    })
            )
            
        }
        
    }//body

}//RestaurantDetailView

struct RestaurantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantDetailView(restaurant: restaurants[0], isShow: .constant(true))
    }
}

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
  
    var body: some View {
        
        GeometryReader { g in
            VStack {
                Spacer()
                HandleBar()
                ScrollView {
                    TitleBar()
                    HeaderView(restaurant: self.restaurant)
                    DetailInfoView(icon: "map", info: self.restaurant.location) .padding(.top)
                    DetailInfoView(icon: "phone", info: self.restaurant.phone)
                    DetailInfoView(icon: nil, info: self.restaurant.description)
                        .padding(.top)
                }
                .background(Color.white)
                .cornerRadius(10, antialiased: true)
                .disabled(self.viewState == .half)
                
            }
            .offset(y: g.size.height/2 + self.dragState.translation.height + self.positionOffSet)
            .animation(.interpolatingSpring(stiffness: 200.00, damping: 25.0, initialVelocity: 10.0))
            .edgesIgnoringSafeArea(.all)
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

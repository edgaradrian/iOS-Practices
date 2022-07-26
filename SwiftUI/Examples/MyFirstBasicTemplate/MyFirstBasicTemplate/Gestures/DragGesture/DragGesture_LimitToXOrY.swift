//
//  DragGesture_LimitToXOrY.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 26/07/22.
//

import SwiftUI

struct DragGesture_LimitToXOrY: View {
    @State private var currentSliderPositionX: CGFloat = 0.0
    @GestureState private var slideOffset = CGSize.zero
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(titulo: "Gestos", subtitulo: "Límite de eje X", description: "Se puede limitar a que el arrastre sólo sea en el eje X o el eje Y.")
            
            Text("Deslizado: (\(slideOffset.width),\(slideOffset.height))")
            Text("currentSliderPositionX (\(Int(currentSliderPositionX)))")
            
            GeometryReader { g in
                
                HStack {
                    Spacer()
                    Image(systemName: "line.horizontal.3")
                        .rotationEffect(.degrees(90))
                }
                .foregroundColor(.white)
                .frame(height: 100)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.blue)
                )
                .offset(x: self.currentSliderPositionX + self.slideOffset.width)
                .gesture(
                    DragGesture()
                        .updating(self.$slideOffset, body: { value, state, transaction in
                            state = value.translation
                        })
                        .onEnded({ value in
                            if value.translation.width < -g.size.width * 0.6 {
                                self.currentSliderPositionX = 50 - g.size.width
                            } else {
                                self.currentSliderPositionX = 0
                            }
                        })
                )
                
            }
            
        }
    }
}

struct DragGesture_LimitToXOrY_Previews: PreviewProvider {
    static var previews: some View {
        DragGesture_LimitToXOrY()
    }
}

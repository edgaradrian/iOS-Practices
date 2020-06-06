//
//  CounterButton.swift
//  SwiftUIStateExercise1
//
//  Created by Edgar Ruiz on 05/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct CounterButton: View {
    
    @Binding var counter: Int
    var color: Color
    
    var body: some View {
        Button(action: {
            self.counter += 1
        }) {
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(color)
                .overlay(
                    Text("\(self.counter)")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
            )
        }
    }//body
}

struct CounterButton_Previews: PreviewProvider {
    static var previews: some View {
        CounterButton(counter: .constant(1), color: .yellow)
            .previewLayout(.sizeThatFits)
    }
}

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
    
    var body: some View {
        Button(action: {
            self.counter += 1
        }) {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(.yellow)
                .overlay(
                    Text("\(self.counter)")
                        .font(.system(size: 100, weight: .bold, design: .rounded))
            )
        }
    }//body
}

struct CounterButton_Previews: PreviewProvider {
    static var previews: some View {
        CounterButton(counter: .constant(1))
            .previewLayout(.sizeThatFits)
    }
}

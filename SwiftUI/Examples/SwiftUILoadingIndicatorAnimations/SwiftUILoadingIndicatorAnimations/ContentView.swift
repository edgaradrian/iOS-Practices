//
//  ContentView.swift
//  SwiftUILoadingIndicatorAnimations
//
//  Created by Edgar Ruiz on 08/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var progress: CGFloat = 0.0
    
    var body: some View {
        ZStack {
            
            Text("\(Int(progress * 100))%")
                .font(.system(.title, design: .rounded))
                .bold()
            
            Circle()
                .stroke(Color(.systemGray6), lineWidth: 15)
                .frame(width: 150, height: 150)
            
            Circle()
                .trim(from: 0.0, to: progress)
                .stroke(Color.blue, lineWidth: 10)
                .frame(width: 150, height: 150)
                .rotationEffect(Angle(degrees: 90))
                
        }
        .onAppear() {
            Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { timer in
                self.progress += 0.05
                print(self.progress)
                if self.progress >= 1.0 {
                    timer.invalidate()
                }
            }
        }
        
    }//body
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

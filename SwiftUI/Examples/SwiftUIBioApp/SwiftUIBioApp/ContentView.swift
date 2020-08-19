//
//  ContentView.swift
//  SwiftUIBioApp
//
//  Created by Edgar Adrián on 18/08/20.
//  Copyright © 2020 Edgar Adrián. All rights reserved.
//

import SwiftUI

let screen = UIScreen.main

struct ContentView: View {
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                
                Ellipse().fill(Color.blue)
                    .rotationEffect(.degrees(90))
                    .offset(y: -screen.bounds.width * 0.7)
                    .edgesIgnoringSafeArea(.top)
                
                VStack(alignment: .leading, spacing: 24) {
                    VStack(spacing: 20) {
                        Text("Edgar Adrian")
                            .font(.system(size: 36, weight: .medium))
                        Text("I'm not doing anything that we weren't doing before. I'm just pumping things up a level.")
                            .font(.system(size:17))
                    }
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .padding(.top)
                    
                }
                
                
            }
        }
        .background(Color.red)
        .multilineTextAlignment(.center)
        .edgesIgnoringSafeArea(.top)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

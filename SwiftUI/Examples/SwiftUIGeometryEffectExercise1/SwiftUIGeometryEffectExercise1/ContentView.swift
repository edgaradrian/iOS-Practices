//
//  ContentView.swift
//  SwiftUIGeometryEffectExercise1
//
//  Created by Edgar Ruiz on 23/10/20.
//

import SwiftUI

struct ContentView: View {
    
    @Namespace private var shapeTransition
    @State private var expand = false
    
    var body: some View {
        if expand {
            Color.purple
                .matchedGeometryEffect(id: "background_id", in: shapeTransition)
                .animation(.easeOut)
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    self.expand.toggle()
                }
        } else {
            Spacer()
            RoundedRectangle(cornerRadius: 50.0)
                .matchedGeometryEffect(id: "background_id", in: shapeTransition)
                .frame(width: 300, height: 400)
                .foregroundColor(.pink)
                .animation(.easeIn)
                .padding()
                .onTapGesture {
                    self.expand.toggle()
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

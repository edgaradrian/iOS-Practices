//
//  ContentView.swift
//  SwiftUIGeometryEffectExample
//
//  Created by Edgar Adrián on 05/10/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var expand = false
    @Namespace private var shapeTransition
    
    var body: some View {
        
        if expand {
            
            //Final state
            Circle()
                .fill(Color.blue)
                .matchedGeometryEffect(id: "circle", in: shapeTransition)
                .frame(width: 300, height: 300)
                .offset(y: -100)
                .animation(.default)
                .onTapGesture {
                    self.expand.toggle()
                }
            
        } else {
            
            //Start state
            Circle()
                .fill(Color.yellow)
                .matchedGeometryEffect(id: "circle", in: shapeTransition)
                .frame(width: 150, height: 150)
                .offset(y: 0)
                .animation(.default)
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

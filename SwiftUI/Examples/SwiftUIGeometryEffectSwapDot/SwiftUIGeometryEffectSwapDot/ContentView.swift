//
//  ContentView.swift
//  SwiftUIGeometryEffectSwapDot
//
//  Created by Edgar Ruiz on 05/11/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var swap = false
    @Namespace private var transition
    
    var body: some View {
        
        if swap {
            
            HStack {
                
                Circle()
                    .fill(Color.blue)
                    .frame(width: 40, height: 40)
                    .matchedGeometryEffect(id: "blueCircle", in: transition)
                
                Spacer()
                
                Circle()
                    .fill(Color.yellow)
                    .frame(width: 40, height: 40)
                    .matchedGeometryEffect(id: "yellowCircle", in: transition)
                
            }
            .frame(width: 120)
            .animation(.linear)
            .onTapGesture {
                self.swap.toggle()
            }
            
        } else {
            
            HStack {
                
                Circle()
                    .fill(Color.yellow)
                    .frame(width: 40, height: 40)
                    .matchedGeometryEffect(id: "yellowCircle", in: transition)
                
                Spacer()
                
                Circle()
                    .fill(Color.blue)
                    .frame(width: 40, height: 40)
                    .matchedGeometryEffect(id: "blueCircle", in: transition)
                
            }
            .frame(width: 120)
            .animation(.linear)
            .onTapGesture {
                self.swap.toggle()
            }
            
        }
        
        
    }//body

}//ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

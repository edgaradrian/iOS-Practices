//
//  ContentView.swift
//  SwiftUIGeometryEffectExercise2
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
                
                Image("america")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .matchedGeometryEffect(id: "ame_esc", in: transition)
                
                Image("america_azul")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .matchedGeometryEffect(id: "ame_azul", in: transition)
            
            }
            .frame(width: 120)
            .animation(.linear)
            .onTapGesture {
                self.swap.toggle()
            }
            
        } else {
            
            HStack {
                
                Image("america_azul")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .matchedGeometryEffect(id: "ame_azul", in: transition)
                
                Image("america")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .matchedGeometryEffect(id: "ame_esc", in: transition)
            
            }
            .frame(width: 120)
            .animation(.linear)
            .onTapGesture {
                self.swap.toggle()
            }
            
        }
    
    }


}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

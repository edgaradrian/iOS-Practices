//
//  ContentView.swift
//  SwiftUIGeometryEffectExample
//
//  Created by Edgar Adrián on 05/10/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var expand = false
    
    var body: some View {
        Circle()
            .fill(Color.blue)
            .frame(width: expand ? 300 : 150, height: expand ? 300 : 150)
            .offset(y: expand ? -100 : 0)
            .animation(.default)
            .onTapGesture {
                self.expand.toggle()
            }
        
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

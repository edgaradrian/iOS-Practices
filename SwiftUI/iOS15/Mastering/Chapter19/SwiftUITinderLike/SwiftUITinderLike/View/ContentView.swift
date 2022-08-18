//
//  ContentView.swift
//  SwiftUITinderLike
//
//  Created by Edgar Adrián on 18/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            TopBarMenu()
            
            CardView(image: "df-mexico", title: "México, Distrito Federal")
            
            Spacer(minLength: 20)
            
            BottomBarMenu()
            
        }
        
    }
}//ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

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
        
        VStack {
            
            if expand {
                
                Spacer()
                
                //Final state
                RoundedRectangle(cornerRadius: 50.0)
                    .matchedGeometryEffect(id: "circle", in: shapeTransition)
                    .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 300)
                    .padding()
                    .foregroundColor(Color(.systemBlue))
                    .animation(.easeIn)
                    .onTapGesture {
                        expand.toggle()
                    }
                
            } else {
                
                //Start state
                RoundedRectangle(cornerRadius: 50.0)
                    .matchedGeometryEffect(id: "circle", in: shapeTransition)
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color(.systemYellow))
                    .animation(.easeIn)
                    .onTapGesture {
                        expand.toggle()
                    }
                
                Spacer()
            
            }
            
        }//VStack
        
        
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  SwiftUIExpandableListExample
//
//  Created by Edgar Adrián Ruiz Infante on 02/08/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(sampleMenuItems, children: \.subMenuItems) { item in
            HStack {
                Image(item.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                
                Text(item.name)
                    .font(.system(.title3, design: .rounded))
                    .bold()
            }
        }
        .listStyle(InsetGroupedListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

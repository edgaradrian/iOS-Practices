//
//  CardView.swift
//  SwiftUIScrollView
//
//  Created by Edgar Ruiz on 03/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack {
            Image("swiftui-button")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack(alignment: .leading) {
                Text("SwiftUI")
                    .font(.headline)
                    .foregroundColor(.secondary)
                    
                Text("Drawing a Border with Round Corners")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                .lineLimit(3)
                
                Text("Written by Edgar Ruiz".uppercased())
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}

//
//  PackerTitle.swift
//  MyFirstSwiftUIAnimation
//
//  Created by Edgar Adrián on 13/05/22.
//

import SwiftUI

struct PackerTitle: View {
    let title: String
    let caption: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .shadow(radius: 8)
                .foregroundColor(.white)
            
            Text(caption)
                .font(.caption)
                .foregroundColor(.white)
            
        }
    }
}

struct PackerTitle_Previews: PreviewProvider {
    static var previews: some View {
        PackerTitle(title: "Green Bay Packers", caption: "")
    }
}

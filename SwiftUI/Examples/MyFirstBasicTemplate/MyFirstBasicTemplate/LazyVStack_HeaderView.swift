//
//  LazyVStack_HeaderView.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 11/02/22.
//

import SwiftUI

struct LazyVStack_HeaderView: View {
    var body: some View {
        HStack {
            Text("Packers")
                .font(.largeTitle)
            Image("packers")
                .resizable()
                .frame(width: 70, height: 50)
        }
        .frame(width: 300, height: 75)
        .background(
            Rectangle()
                .fill(Color.yellow)
                .opacity(0.9)
        )
    }
}

struct LazyVStack_HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        LazyVStack_HeaderView()
    }
}

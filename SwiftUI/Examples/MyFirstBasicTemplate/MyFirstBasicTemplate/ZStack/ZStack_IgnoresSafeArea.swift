//
//  ZStack_IgnoresSafeArea.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 16/02/22.
//

import SwiftUI

struct ZStack_IgnoresSafeArea: View {
    var body: some View {
        ZStack {
            Color.gray
            
            VStack(spacing: 20) {
                Text("ZStack")
                    .font(.largeTitle)
                
                Text("Edges Ignoring Safe Area")
                    .foregroundColor(.white)
                
                Text("Ignorando las areas seguras, la vista se extenderá por toda la escena.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(
                        Color.green
                    )
                
            }
            .font(.title)
        }
        .ignoresSafeArea(.all)
    }
}

struct ZStack_IgnoresSafeArea_Previews: PreviewProvider {
    static var previews: some View {
        ZStack_IgnoresSafeArea()
    }
}

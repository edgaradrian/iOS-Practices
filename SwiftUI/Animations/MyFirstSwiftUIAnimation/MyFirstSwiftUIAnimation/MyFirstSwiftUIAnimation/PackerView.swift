//
//  PackerView.swift
//  MyFirstSwiftUIAnimation
//
//  Created by Edgar Adrián on 13/05/22.
//

import SwiftUI

struct PackerView: View {
    var body: some View {
        VStack(spacing: 0) {
            StadiumImage(name: "Lambeau")
            
            ZStack {
                HStack {
                    PackerTitle(title: "Green Bay Packers", caption: "The Green and Gold")
                        .offset(x: 0, y: -30)
                        .padding(.leading, 30)
                    
                    Spacer()
                }
                
                Image("greenbay")
                    .resizable()
                    .position(x: 200, y: 220)
                    .scaleEffect(0.33)
                    .shadow(radius: 10)
                
            }
            .background(Color(red: 0.1, green: 0.1, blue: 0.1))
            
            PackersList()
            
        }
    }
}

struct PackerView_Previews: PreviewProvider {
    static var previews: some View {
        PackerView()
    }
}

//
//  ContentView.swift
//  SwiftUIBusinessCard
//
//  Created by Edgar Ruiz on 29/05/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.systemTeal)
                .edgesIgnoringSafeArea(.all)
            VStack {
                
                Image("Mordecai")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color.white, lineWidth: 5)
                    )
                
                Text("Edgar Adrián")
                    .font(.custom("ChelseaMarket-Regular", size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text("iOS Developer")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                
                Divider()
                
                ContactView(imageName: "phone.fill", texto: "52+ (55) 57029406")
                ContactView(imageName: "envelope.fill", texto: "addick@email.com")
                    
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



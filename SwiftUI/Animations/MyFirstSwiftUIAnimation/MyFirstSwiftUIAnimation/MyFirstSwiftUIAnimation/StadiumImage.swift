//
//  StadiumImage.swift
//  MyFirstSwiftUIAnimation
//
//  Created by Edgar Adrián on 13/05/22.
//

import SwiftUI

struct StadiumImage: View {
    let name: String
    
    var body: some View {
        Image(name)
            .resizable()
            .edgesIgnoringSafeArea(.top)
            .frame(height: 300)
    }
}

struct StadiumImage_Previews: PreviewProvider {
    static var previews: some View {
        StadiumImage(name: "Lambeau")
    }
}

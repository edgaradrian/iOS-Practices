//
//  CircleImage.swift
//  MyFirstSwiftUIProject
//
//  Created by Edgar Adrián on 25/08/19.
//  Copyright © 2019 Edgar Adrián. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("batman").clipShape(Circle()).overlay(Circle().stroke(Color.gray, lineWidth: 4)).shadow(radius: 10)
    }//body
}//struct CircleImage

#if DEBUG
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
#endif

//
//  ProfileDetail.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 20/07/22.
//

import SwiftUI

struct ProfileDetail: View {
    var body: some View {
        ZStack {
            
            Color.green
                .saturation(0.5)
            
            Image("ARod")
                .resizable()
                .frame(width: 200, height: 300, alignment: .center)
            
        }
        .ignoresSafeArea()
    }
}

struct ProfileDetail_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDetail()
    }
}

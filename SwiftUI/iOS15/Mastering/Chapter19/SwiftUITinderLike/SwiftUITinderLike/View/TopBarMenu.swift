//
//  TopBarMenu.swift
//  SwiftUITinderLike
//
//  Created by Edgar Adrián on 18/08/22.
//

import SwiftUI

struct TopBarMenu: View {
    var body: some View {
        HStack {
            Image(systemName: "line.horizontal.3")
                .font(.system(size: 30))
            Spacer()
            Image(systemName: "mappin.and.ellipse")
                .font(.system(size: 35))
            Spacer()
            Image(systemName: "heart.circle.fill")
                .font(.system(size: 30))
        }
        .padding()
    }//body
}//TopBarMenu

struct TopBarMenu_Previews: PreviewProvider {
    static var previews: some View {
        TopBarMenu()
            .previewLayout(.sizeThatFits)
    }
}

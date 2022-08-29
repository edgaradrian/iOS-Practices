//
//  TopNavBar.swift
//  SwiftUIAppleWalletLike
//
//  Created by Edgar Adrián on 29/08/22.
//

import SwiftUI

struct TopNavBar: View {
    var body: some View {
        HStack {
            Text("Wallet")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.heavy)
            
            Spacer()
            
            Image(systemName: "plus.circle.fill")
                .font(.system(.title))
        }
        .padding(.horizontal)
        .padding(.top, 20)
    }
}

struct TopNavBar_Previews: PreviewProvider {
    static var previews: some View {
        TopNavBar()
            .previewLayout(.sizeThatFits)
    }
}

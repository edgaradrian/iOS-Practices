//
//  BlankView.swift
//  SwiftUIPersonalFinance
//
//  Created by Edgar Adrián on 13/10/22.
//

import SwiftUI

struct BlankView: View {
    
    var bgColor: Color
    
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(bgColor)
        .edgesIgnoringSafeArea(.all)
    }
    
}//BlankView

struct BlankView_Previews: PreviewProvider {
    static var previews: some View {
        BlankView(bgColor: .cyan)
    }
}//BlankView_Previews

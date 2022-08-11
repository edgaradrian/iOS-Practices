//
//  BlankView.swift
//  SwiftUIBottomSheetExample
//
//  Created by Edgar Adrián on 11/08/22.
//

import SwiftUI

struct BlankView: View {
    
    var color: Color
    
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(color)
        .edgesIgnoringSafeArea(.all)
    }
    
}//BlankView

struct BlankView_Previews: PreviewProvider {
    static var previews: some View {
        BlankView(color: .white)
    }
}

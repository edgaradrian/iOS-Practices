//
//  HandleBar.swift
//  SwiftUIBottomSheetExample
//
//  Created by Edgar Adrián on 11/08/22.
//

import SwiftUI

struct HandleBar: View {
    
    var body: some View {
        Rectangle()
            .frame(width: 50, height: 5)
            .foregroundColor(.gray)
            .cornerRadius(10)
    }
    
}//HandleBar

struct HandleBar_Previews: PreviewProvider {
    static var previews: some View {
        HandleBar()
    }
}

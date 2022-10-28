//
//  HandleBar.swift
//  SwiftUIPersonalFinance
//
//  Created by Edgar Adrián on 28/10/22.
//

import SwiftUI

struct HandleBar: View {
    var body: some View {
        Rectangle()
            .frame(width: 50, height: 5)
            .foregroundColor(Color(.systemGray5))
            .cornerRadius(10)
    }
}//HandleBar

struct HandleBar_Previews: PreviewProvider {
    static var previews: some View {
        HandleBar()
    }
}//HandleBar_Previews

//
//  BasicImageRow.swift
//  SwiftUIBottomSheetExample
//
//  Created by Edgar Adrián on 11/08/22.
//

import SwiftUI

struct BasicImageRow: View {
    
    var restaurant: Restaurant
    
    var body: some View {
        HStack {
            Image(restaurant.image)
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(5)
            Text(restaurant.name)
        }
    }
}//BasicImageRow

struct BasicImageRow_Previews: PreviewProvider {
    static var previews: some View {
        BasicImageRow(restaurant: Restaurant())
    }
}

//
//  TitleBar.swift
//  SwiftUIBottomSheetExample
//
//  Created by Edgar Adrián on 11/08/22.
//

import SwiftUI

struct TitleBar: View {
    var body: some View {
        HStack {
            Text("Detalles del restaurante")
                .font(.headline)
                .foregroundColor(.primary)
            
            Spacer()
        }
        .padding()
    }
}

struct TitleBar_Previews: PreviewProvider {
    static var previews: some View {
        TitleBar()
    }
}

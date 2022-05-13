//
//  PackersList.swift
//  MyFirstSwiftUIAnimation
//
//  Created by Edgar Adrián on 13/05/22.
//

import SwiftUI

struct PackersList: View {
    var body: some View {
        List((0...12), id: \.self) { number in
            VStack(alignment: .leading) {
                Text("Teamplayer #\(number + 1)")
                    .font(.title)
                HStack(alignment: .lastTextBaseline) {
                    Text("Green Bay")
                        .font(.subheadline)
                    Image(systemName: "pin")
                    Spacer()
                    Text("Wisconsin")
                }
            }
            .padding()
        }
    }
}

struct PackersList_Previews: PreviewProvider {
    static var previews: some View {
        PackersList()
    }
}

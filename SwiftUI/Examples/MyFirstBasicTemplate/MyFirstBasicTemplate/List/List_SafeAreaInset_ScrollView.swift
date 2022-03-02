//
//  List_SafeAreaInset_ScrollView.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 01/03/22.
//

import SwiftUI

struct List_SafeAreaInset_ScrollView: View {
    var body: some View {
        VStack(spacing: 0) {
            
            HeaderView(titulo: "ScrollView", subtitulo: "SafeAreaInset", description: "SafeAreaInset trabaja bien con el ScrollView")
            
            ScrollView {
                ForEach(1 ..< 21) { number in
                    Text("\(number)")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.cyan, in: RoundedRectangle(cornerRadius: 10))
                }
            }
            .padding(.horizontal)
            .safeAreaInset(edge: .bottom) {
                VStack {
                    Divider()
                    Text("Total 20")
                        .foregroundStyle(.secondary)
                }
                .background(.bar)
            }
            
        }
        .font(.title)
    }
}

struct List_SafeAreaInset_ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        List_SafeAreaInset_ScrollView()
    }
}

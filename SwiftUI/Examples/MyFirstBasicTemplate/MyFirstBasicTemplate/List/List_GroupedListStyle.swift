//
//  List_GroupedListStyle.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 28/02/22.
//

import SwiftUI

struct List_GroupedListStyle: View {
    
    var data = ["Grouped List Style", "Esta lista está usando un estilo de grupo de lista.", "Edgar", "Adrián", "Addick", "Dulce", "Astrid", "Abril", "Alissa"]
    
    var body: some View {
        List(data, id: \.self) { string in
            HStack {
                Text(string)
                    .font(string.starts(with: "Grou") ? .largeTitle : .body)
                
                Spacer()
                
                Image(systemName: string.starts(with: "Ad") ? "circle.fill" : "circle")
                    .foregroundColor(.cyan)
            }
        }
        .listStyle(.grouped)
    }
}

struct List_GroupedListStyle_Previews: PreviewProvider {
    static var previews: some View {
        List_GroupedListStyle()
    }
}

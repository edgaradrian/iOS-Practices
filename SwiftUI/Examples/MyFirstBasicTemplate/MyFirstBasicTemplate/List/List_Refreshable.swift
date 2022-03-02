//
//  List_Refreshable.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 02/03/22.
//

import SwiftUI

struct List_Refreshable: View {
    @State private var stringArray = ["Edgar", "Adrián", "Dulce", "Astrid", "Abril", "Alissa"]
    
    var body: some View {
        List {
            Group {
                Text(Image(systemName: "arrow.down")) +
                Text(" Jala para refrescar ") +
                Text(Image(systemName: "arrow.down"))
            }
            .frame(maxWidth: .infinity)
            .foregroundColor(.cyan)
            
            ForEach(stringArray, id: \.self) { string in
                Text(string)
            }
            
        }
        .font(.title)
        .refreshable {
            stringArray.append("Un nuevo nombre")
        }
    }
}

struct List_Refreshable_Previews: PreviewProvider {
    static var previews: some View {
        List_Refreshable()
    }
}

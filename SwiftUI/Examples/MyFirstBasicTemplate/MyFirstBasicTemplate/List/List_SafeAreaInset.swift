//
//  List_SafeAreaInset.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 01/03/22.
//

import SwiftUI

struct List_SafeAreaInset: View {
    var body: some View {
        VStack(spacing: 0) {
            
            HeaderView(titulo: "List", subtitulo: "SafeAreaInset", description: "Puedes usar este modificador para superponer una vista en la cima de otra vista pero también compensar el contenido de la vista padre.")
            
            List {
                ForEach(1 ..< 21) { number in
                    Text("\(number)")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.cyan, in: RoundedRectangle(cornerRadius: 10))
                }
            }
            .listStyle(.plain)
            .safeAreaInset(edge: .bottom) {
                VStack {
                    Divider()
                    Text("Total: 20")
                        .foregroundStyle(.secondary)
                }
                .background(.bar)
            }
            
        }
        .font(.title)
    }
}

struct List_SafeAreaInset_Previews: PreviewProvider {
    static var previews: some View {
        List_SafeAreaInset()
    }
}

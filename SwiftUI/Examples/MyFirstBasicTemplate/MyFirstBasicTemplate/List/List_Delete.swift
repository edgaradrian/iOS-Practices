//
//  List_Delete.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 27/02/22.
//

import SwiftUI

struct List_Delete: View {
    @State var data = ["Desliza para borrar", "Aaron Rodgers", "Aaron Jones", "Davante Adams", "Randall Cobb", "Jordy Nelson"]
    
    var body: some View {
        List {
            Section {
                ForEach(data, id: \.self) { data in
                    Text(data)
                        .font(Font.system(size: 24))
                        .padding()
                }
                .onDelete { offsets in
                    data.remove(atOffsets: offsets)
                }
            } header: {
                Text("Packers")
                    .padding()
            }
        }
        .listStyle(.grouped)
    }
}

struct List_Delete_Previews: PreviewProvider {
    static var previews: some View {
        List_Delete()
    }
}

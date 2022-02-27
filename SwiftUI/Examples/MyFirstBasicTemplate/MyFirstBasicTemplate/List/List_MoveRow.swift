//
//  List_MoveRow.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 27/02/22.
//

import SwiftUI

struct List_MoveRow: View {
    @State var data = ["Presiona el botón de editar para reordenar", "Aaron Rodgers", "Aaron JOnes", "Davante Adams", "Randall Cobb", "Jordy Nelson"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(data, id: \.self) { string in
                    Text(string)
                        .font(Font.system(size: 24))
                        .padding()
                }
                .onMove { source, destination in
                    data.move(fromOffsets: source, toOffset: destination)
                }
                .navigationTitle("Packers")
                .toolbar {
                    ToolbarItem { EditButton() }
                }
            }
        }
        .tint(.cyan)
    }
}

struct List_MoveRow_Previews: PreviewProvider {
    static var previews: some View {
        List_MoveRow()
    }
}

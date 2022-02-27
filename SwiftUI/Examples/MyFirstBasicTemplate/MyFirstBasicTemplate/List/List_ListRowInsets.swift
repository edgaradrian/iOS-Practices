//
//  List_ListRowInsets.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 27/02/22.
//

import SwiftUI

struct List_ListRowInsets: View {
    
    @State private var newPacker = ""
    
    @State var data = [
        Packer(name: "Aaron Rodgers", position: "QB"),
        Packer(name: "Aaron Jones", position: "RB"),
        Packer(name: "Davante Adams", position: "WR", isIntented: true),
        Packer(name: "Randall Cobb", position: "WR", isIntented: true),
        Packer(name: "ZaDarious Smith", position: "EDGE")
    ]
    
    var body: some View {
        VStack {
            VStack {
                Text("Packers")
                    .font(.title)
                    .foregroundColor(.black)
                
                HStack {
                    TextField("new packer", text: $newPacker)
                    Button(action: {
                        data.append(Packer(name: newPacker))
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .font(.title)
                    }
                }
                .foregroundColor(.green)
                
            }
            
            
            List {
                
                ForEach(self.data) { packer in
                    Text(packer.name)
                        .font(.title)
                        .padding()
                        .listRowInsets(EdgeInsets(top: 0, leading: packer.isIntented ? 60 : 20, bottom: 0, trailing: 0))
                }
                
            }
            .listStyle(.plain)
            
            
        }
        
    }
}

struct List_ListRowInsets_Previews: PreviewProvider {
    static var previews: some View {
        List_ListRowInsets()
    }
}

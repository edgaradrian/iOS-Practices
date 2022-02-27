//
//  List_ListRowBackground.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 27/02/22.
//

import SwiftUI

struct Packer: Identifiable {
    let id = UUID()
    var name = ""
    var position = ""
    var isIntented = false
}

struct List_ListRowBackground: View {
    
    @State private var newPacker = ""
    
    @State var data = [
        Packer(name: "Aaron Rodgers", position: "QB"),
        Packer(name: "Aaron Jones", position: "RB"),
        Packer(name: "Davante Adams", position: "WR"),
        Packer(name: "Randall Cobb", position: "WR"),
        Packer(name: "ZaDarious Smith", position: "EDGE"),
    ]
    
    var body: some View {
        List {
            Section {
                ForEach(data) { packer in
                    Text(packer.name)
                        .font(Font.system(size: 24))
                        .foregroundColor(self.getTextColor(position: packer.position))
                        .listRowBackground(packer.position == "QB" ? Color.green : Color.clear)
                }
            } header: {
                VStack {
                    Text("Packers")
                        .font(.title)
                    HStack {
                        TextField("New packer", text: $newPacker)
                            .textFieldStyle(.roundedBorder)
                        Button(action: {
                            data.append(Packer(name: newPacker))
                            newPacker = ""
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .font(.title)
                        }

                    }
                }
                .padding(.bottom)
            }
        }
        .listStyle(.inset)
    }
    
    private func getTextColor(position: String) -> Color {
        position == "QB" ? Color.black : Color.primary
    }
    
}

struct List_ListRowBackground_Previews: PreviewProvider {
    static var previews: some View {
        List_ListRowBackground()
    }
}

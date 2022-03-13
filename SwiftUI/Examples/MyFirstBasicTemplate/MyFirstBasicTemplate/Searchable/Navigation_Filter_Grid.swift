//
//  Navigation_Filter_Grid.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 12/03/22.
//

import SwiftUI

struct Navigation_Filter_Grid: View {
    @State private var packers: [PackerProfile] = []
    @State private var searchText = ""
    var columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
                ]
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach(searchResults) { packer in
                            Image(packer.image)
                                .resizable()
                                .frame(width: 120, height: 120)
                                .scaledToFill()
                        }
                    }
                }
                .animation(.default, value: searchText)

                HeaderView(titulo: "", subtitulo: "Filter - Grid", description: "Cuando se usa un ScrollView, se debe despalzar para mirar el textfield del buscador")
                    .font(.title)

            }
            .searchable(text: $searchText, prompt: Text("Filtro"))
            .navigationTitle("Navigation")
            .task {
                packers = getPackerProfiles()
            }
        }
    }
    
    var searchResults: [PackerProfile] {
        if searchText.isEmpty {
            return packers
        } else {
            return packers.filter {
                $0.name.contains(searchText)
            }
        }
    }

    
    func getPackerProfiles() -> [PackerProfile] {
        [
        PackerProfile(name: "Aaron Rodgers", image: "ARod"),
        PackerProfile(name: "Davante Adams", image: "DA"),
        PackerProfile(name: "Kenny Clark", image: "KC"),
        PackerProfile(name: "Aaron Jones", image: "AJ"),
        PackerProfile(name: "ZaDarius Smith", image: "Zadarious"),
        PackerProfile(name: "AJ DIllon", image: "AJDillon"),
        PackerProfile(name: "Randall Cobb", image: "RandallCobb"),
        PackerProfile(name: "Jaire Alexander", image: "JaireAlexander"),
        PackerProfile(name: "Rasul Douglas", image: "RasulDouglas"),
        PackerProfile(name: "Mason Crosby", image: "MasonCrosby")
        ]
    }
    
}

struct PackerProfile: Identifiable {
    let id = UUID()
    var name = ""
    var image = ""
}//PackerProfile

struct Navigation_Filter_Grid_Previews: PreviewProvider {
    static var previews: some View {
        Navigation_Filter_Grid()
    }
}

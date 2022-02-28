//
//  List_HeadersAndFooters.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 28/02/22.
//

import SwiftUI

struct List_HeadersAndFooters: View {
    var data = ["Aaron Rodgers", "Aaron Jones", "Davante Adams", "Randall Cobb", "Jordy Nelson"]
    
    var body: some View {
        List {
            Section {
                ForEach(data, id: \.self) { packer in
                    Text(packer)
                }
            } header: {
                Header()
            } footer: {
                Text("Five packers")
            }
        }
    }
}

struct Header: View {
    var body: some View {
        Image("Lambeau_Field")
            .resizable()
            .scaledToFill()
            .frame(maxWidth: .infinity)
            .overlay(
                Text("PACKERS")
                    .font(.system(size: 60, design: .serif))
                    .foregroundColor(.yellow)
            )
            .padding(.horizontal, -40)
            .padding(.top, -50)
    }
}

struct List_HeadersAndFooters_Previews: PreviewProvider {
    static var previews: some View {
        List_HeadersAndFooters()
    }
}

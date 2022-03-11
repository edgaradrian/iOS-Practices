//
//  ScrollView_Intro.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 10/03/22.
//

import SwiftUI

struct ScrollView_Intro: View {
    @State private var names = ["Edgar", "Adrián", "Addick", "Dulce", "Astrid", "Abril", "Alissa", "Adick", "Miranda", "Mabel", "Addickted"]
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                ScrollView {
                    ForEach(names, id: \.self) { name in
                        NavigationLink(destination: DetailView(name: name)) {
                            HStack {
                                Text(name)
                                    .foregroundColor(.primary)
                                Image(systemName: "checkmark.seal.fill")
                                    .foregroundColor(.green)
                                Spacer()
                                Image(systemName: "chevron.right.circle.fill")
                            }
                            .font(.system(size: 24, design: .rounded))
                            .padding()
                            .background(Color.white)
                            .cornerRadius(8)
                            .shadow(radius: 1, y: 1)
                        }
                        .frame(width: geometry.size.width - 32)
                        .tint(.cyan)
                        .padding()
                    }
                }
                .navigationTitle(Text("Gente chida"))
            }
        }
    }
}

struct DetailView: View {
    var name: String

    var body: some View {
        VStack {
            Spacer()
            Text(name)
                .font(.title)
            Spacer()
        }
    }
}//DetailView

struct ScrollView_Intro_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView_Intro()
    }
}

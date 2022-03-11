//
//  ScrollView_SafeAreaInset.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 10/03/22.
//

import SwiftUI

struct ScrollView_SafeAreaInset: View {
    @State private var names = ["Edgar", "Adrián", "Addick", "Dulce", "Astrid", "Abril", "Alissa", "Adick", "Miranda", "Mabel", "Addickted"]
    
    var body: some View {
        NavigationView {
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
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                        .shadow(radius: 2, y: 1)
                    }
                }
                .padding(.horizontal)
            }
            .safeAreaInset(edge: .bottom) {
                VStack(spacing: 20) {
                    Divider()
                    Text("Doce Personas")
                }
                .background(.regularMaterial)
            }
            .navigationTitle("Gente Chida")
        }
        .tint(.cyan)
    }
}

struct ScrollView_SafeAreaInset_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView_SafeAreaInset()
    }
}

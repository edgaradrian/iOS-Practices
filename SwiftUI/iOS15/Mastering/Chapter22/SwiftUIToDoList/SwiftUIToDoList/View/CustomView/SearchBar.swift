//
//  SearchBar.swift
//  SwiftUIToDoList
//
//  Created by Edgar Adrián on 13/10/22.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text: String

    @State private var isEditing = false
        
    private var searchText: Binding<String> {
        
        Binding<String>(
            get: {
                self.text.capitalized
                
            }, set: {
                self.text = $0
            }
        )
    }
    
    var body: some View {
        HStack {
            
            TextField("Buscar...", text: searchText)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                        
                        if isEditing {
                            Button(action: {
                                self.text = ""
                            }) {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 8)
                            }
                        }
                    }
                )
                .padding(.horizontal, 10)
                .onTapGesture {
                    withAnimation {
                        self.isEditing = true
                    }
                }
            
            
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.text = ""
                    
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                }) {
                    Text("Cancelar")
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
            }
        }
    }
}//SearchBar

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""))
            .previewLayout(.sizeThatFits)
    }
}//SearchBar_Previews

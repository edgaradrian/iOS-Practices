//
//  CustomSearchBar.swift
//  SwiftUIToDoList
//
//  Created by Edgar Adrián on 11/10/22.
//

import SwiftUI

struct CustomSearchBar: UIViewRepresentable {
    
    @Binding var text: String
    
    func makeUIView(context: Context) -> UISearchBar {
        
        let searchBar = UISearchBar()
        
        searchBar.searchBarStyle = .minimal
        searchBar.autocapitalizationType = .none
        searchBar.placeholder = "Buscar..."
        
        return searchBar
        
    }//makeUIView
    
    func updateUIView(_ uiView: UISearchBar, context: Context) {
        uiView.text = text
    }//updateUIView
    
    
    typealias UIViewType = UISearchBar
    
    
    
    
}//CustomSearchBar

struct CustomSearchBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomSearchBar(text: .constant("..."))
            .previewLayout(.sizeThatFits)
    }
}

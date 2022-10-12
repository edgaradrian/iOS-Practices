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
        searchBar.delegate = context.coordinator
        
        return searchBar
        
    }//makeUIView
    
    func updateUIView(_ uiView: UISearchBar, context: Context) {
        uiView.text = text
    }//updateUIView
    
    
    typealias UIViewType = UISearchBar
    
    func makeCoordinator() -> SearchBarCoordinator {
        SearchBarCoordinator($text)
    }
    
}//CustomSearchBar

class SearchBarCoordinator: NSObject, UISearchBarDelegate {
    
    @Binding var text: String
    
    init(_ text: Binding<String>) {
        self._text = text
    }
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchBar.showsCancelButton = true
        text = searchText
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        text = ""
        searchBar.resignFirstResponder()
        searchBar.showsCancelButton = false
        searchBar.endEditing(true)
    }//searchBarCancelButtonClicked
    
    func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
        searchBar.showsCancelButton = true
        return true
    }//searchBarShouldBeginEditing
    
}//SearchBarCoordinator


struct CustomSearchBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomSearchBar(text: .constant("..."))
            .previewLayout(.sizeThatFits)
    }
}

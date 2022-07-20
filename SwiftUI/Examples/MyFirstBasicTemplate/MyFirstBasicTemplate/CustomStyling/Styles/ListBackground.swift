//
//  ListBackground.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 19/07/22.
//

import SwiftUI

struct ListBackground: ViewModifier {
    
    var color = Color.clear
    
    func body(content: Content) -> some View {
        content
            .background(color)
            .onAppear {
                UITableView.appearance().backgroundColor = UIColor.clear
                UITableViewCell.appearance().backgroundColor = UIColor.clear
            }
            .onDisappear {
                UITableView.appearance().backgroundColor = UIColor.systemBackground
                UITableViewCell.appearance().backgroundColor = UIColor.systemBackground
            }
    }
    
}//ListBackground


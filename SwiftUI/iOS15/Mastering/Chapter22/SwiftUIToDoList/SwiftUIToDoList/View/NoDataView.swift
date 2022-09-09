//
//  NoDataView.swift
//  SwiftUIToDoList
//
//  Created by Edgar Adrián on 09/09/22.
//

import SwiftUI

struct NoDataView: View {
    
    var body: some View {
        Image("main")
            .resizable()
            .scaledToFit()
    }//body
    
}//NoDataView

struct NoDataView_Previews: PreviewProvider {
    static var previews: some View {
        NoDataView()
    }
}

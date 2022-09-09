//
//  BackgroundView.swift
//  SwiftUIToDoList
//
//  Created by Edgar Adrián on 09/09/22.
//

import SwiftUI

struct BackgroundView: View {
    
    var bgColor: Color

    var body: some View {
        VStack {
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(bgColor)
        .edgesIgnoringSafeArea(.all)
    }//body
    
}//BackgroundView

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(bgColor: .blue)
    }
}

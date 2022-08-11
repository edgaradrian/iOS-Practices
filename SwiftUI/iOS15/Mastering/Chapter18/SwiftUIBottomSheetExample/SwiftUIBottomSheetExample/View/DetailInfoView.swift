//
//  DetailInfoView.swift
//  SwiftUIBottomSheetExample
//
//  Created by Edgar Adrián on 11/08/22.
//

import SwiftUI

struct DetailInfoView: View {
    
    let icon: String?
    let info: String
    
    var body: some View {
        HStack {
            if icon != nil {
                Image(systemName: icon!)
                    .padding(.trailing, 10)
            }
            Text(info)
                .font(.system(.body, design: .rounded))
            
            Spacer()
        }
        .padding(.horizontal)
    }//body

}//DetailInfoView

struct DetailInfoView_Previews: PreviewProvider {
    static var previews: some View {
        DetailInfoView(icon: "", info: "")
    }
}

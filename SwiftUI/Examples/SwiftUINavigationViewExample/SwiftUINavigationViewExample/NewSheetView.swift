//
//  NewSheetView.swift
//  SwiftUINavigationViewExample
//
//  Created by Edgar Adrián on 02/06/20.
//  Copyright © 2020 Edgar Adrián. All rights reserved.
//

import SwiftUI

struct NewSheetView: View {
    
    var sheetData: Int
    
    var body: some View {
        Text("I am a sheet \(sheetData)")
    }
}

struct NewSheetView_Previews: PreviewProvider {
    static var previews: some View {
        NewSheetView(sheetData: 0)
    }
}

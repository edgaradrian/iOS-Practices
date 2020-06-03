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
    @Binding var modal : Bool
    @Binding var name : String
    
    var body: some View {
        VStack {
            Text("I am a sheet \(sheetData)")
            TextField("Write your name", text: self.$name)
                .padding(.horizontal)
            Button("Send") {
                self.modal.toggle()
            }
        }
        
    }
}

struct NewSheetView_Previews: PreviewProvider {
    static var previews: some View {
        NewSheetView(sheetData: 0, modal: .constant(false), name: .constant(""))
    }
}

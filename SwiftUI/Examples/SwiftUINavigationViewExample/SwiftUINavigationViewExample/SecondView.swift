//
//  SecondView.swift
//  SwiftUINavigationViewExample
//
//  Created by Edgar Adrián on 29/05/20.
//  Copyright © 2020 Edgar Adrián. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        HStack {
            Text("I am The Second View")
                .navigationBarTitle("Second View")
            .navigationBarItems(trailing:
                NavigationLink(destination: ThirdView()) {
                    Image(systemName: "plus.app.fill")
                }
            )
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}

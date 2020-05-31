//
//  DetailView.swift
//  SwiftUIHNewsReader
//
//  Created by Edgar Ruiz on 31/05/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }

}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "")
    }
}

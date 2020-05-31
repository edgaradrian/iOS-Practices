//
//  WebView.swift
//  SwiftUIHNewsReader
//
//  Created by Edgar Ruiz on 31/05/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> some UIView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: some UIView, context: Context) {
        
    }
    
}

//
//  ContentView.swift
//  SwiftUIDisclosureGroupExample
//
//  Created by Edgar Adrián Ruiz Infante on 05/08/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var showContent = false
    
    var body: some View {
        List {
            ForEach(FAQList) { faq in
                FAQView(showContent: $showContent, contentText: faq.content, labelText: faq.lable)
            }
        }
    }
    
}//ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

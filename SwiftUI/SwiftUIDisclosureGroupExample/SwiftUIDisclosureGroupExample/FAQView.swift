//
//  FAQView.swift
//  SwiftUIDisclosureGroupExample
//
//  Created by Edgar Adrián Ruiz Infante on 05/08/20.
//

import SwiftUI

struct FAQView: View {
    
    @Binding var showContent: Bool
    var contentText: String
    var labelText: String
    
    var body: some View {
        DisclosureGroup(
            isExpanded: $showContent,
            content: {
                Text(contentText)
                    .font(.body)
                    .fontWeight(.light)
            },
            label: {
                Text(labelText)
                    .font(.body)
                    .bold()
            }
        )
        .padding()
    }
}

struct FAQView_Previews: PreviewProvider {
    static var previews: some View {
        FAQView(showContent: .constant(false), contentText: "", labelText: "").previewLayout(.sizeThatFits)
    }
}

//
//  ContactCellView.swift
//  Contacts
//
//  Created by Edgar Ruiz on 08/06/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import SwiftUI

struct ContactCellView: View {
    var body: some View {
        HStack {
            Text("EA")
                .padding(30)
                .background(Color(.systemGray6))
                .clipShape(Circle())
                .foregroundColor(.white)
                .font(.title)
            
            VStack(alignment: .leading) {
                Text("Name")
                    .font(.headline)
                    .bold()
                Text("Last Name")
                    .font(.caption)
                Text("57029406")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct ContactCellView_Previews: PreviewProvider {
    static var previews: some View {
        ContactCellView()
            .previewLayout(.sizeThatFits)
    }
}

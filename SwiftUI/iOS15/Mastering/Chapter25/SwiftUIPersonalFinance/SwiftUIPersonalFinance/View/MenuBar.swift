//
//  MenuBar.swift
//  SwiftUIPersonalFinance
//
//  Created by Edgar Adrián on 05/11/22.
//

import SwiftUI

struct MenuBar<Content>: View where Content: View {
    @State private var showPaymentForm = false
    
    let modalContent: () -> Content
    
    var body: some View {
        ZStack(alignment: .trailing) {
            HStack(alignment: .center) {
                Spacer()
                
                VStack(alignment: .center) {
                    Text(Date.today.string(with: "EEEE, MMM d, yyyy"))
                        .font(.caption)
                        .foregroundColor(.gray)
                    Text("Finanzas Personal")
                        .font(.title)
                        .fontWeight(.black)
                }
                
                Spacer()
            }
            
            Button(action: {
                self.showPaymentForm = true
            }) {
                Image(systemName: "plus.circle")
                    .font(.title)
                    .foregroundColor(.primary)
            }
            .sheet(isPresented: self.$showPaymentForm, onDismiss: {
                self.showPaymentForm = false
            }) {
                self.modalContent()
            }
        }

    }
}//MenuBar


//
//  ContentView.swift
//  SwiftUIShowAlerts
//
//  Created by Edgar Adrián on 22/05/20.
//  Copyright © 2020 Edgar Adrián. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showAlert = false
    @State private var showActionSheet = false

    var alert: Alert {
        Alert(title: Text("Alert"), message: Text("Showing an alert"), dismissButton: .default(Text("Accept")))
    }//alert

    var actionSheet: ActionSheet {
        ActionSheet(title: Text("Action Sheet"), message: Text("Showing an action sheet"), buttons: [.default(Text("Hello!")), .default(Text("Hi")), .cancel(Text("Cancel"))])
    }
    
    var body: some View {
        
        ZStack {
        
            VStack(alignment: .center, spacing: 10) {
       
                Button(action: {
                    self.showAlert.toggle()
                }) {
                    Text("Show Simple Alert")
                        .foregroundColor(.white)
                        .padding()
                }.background(Color.blue)
                    .alert(isPresented: self.$showAlert) {
                        self.alert
                }
                
                Button(action: {
                    self.showActionSheet.toggle()
                }) {
                    Text("Show Action Sheet")
                        .foregroundColor(.white)
                        .padding()
                }.background(Color.green)
                    .actionSheet(isPresented: self.$showActionSheet) { () -> ActionSheet in
                        self.actionSheet
                }
                   
            
            }.cornerRadius(8)
        
        }//Ztack
    
    }//body
    
    
}//Content View

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

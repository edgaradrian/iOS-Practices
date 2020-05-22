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

    var alert: Alert {
        Alert(title: Text("Alert"), message: Text("Showing an alert"), dismissButton: .default(Text("Accept")))
    }//alert

    var body: some View {
        
        ZStack {
        
            VStack {
       
                Button(action: {
                    self.showAlert.toggle()
                }) {
                    Text("Show simple Alert")
                        .foregroundColor(.white)
                        .padding()
                }.background(Color.blue)
                .cornerRadius(8)
                    .alert(isPresented: self.$showAlert) {
                        self.alert
                }
            
            }//VStack
        
        }//Ztack
    
    }//body
    
    
}//Content View

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

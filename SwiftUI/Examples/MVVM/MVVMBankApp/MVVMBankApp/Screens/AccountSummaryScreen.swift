//
//  AccountSummaryScreen.swift
//  MVVMBankApp
//
//  Created by Edgar Adrián on 15/12/20.
//

import SwiftUI

struct AccountSummaryScreen: View {
    
    @ObservedObject private var accountSummaryVM = AccountSummaryViewModel()
    
    @State private var isPresented = false
    
    var body: some View {
        VStack {
            GeometryReader { geometry in
                VStack {
                    AccountListView(accounts: accountSummaryVM.accounts)
                        .frame(height: geometry.size.height/2)
                    Text("\(accountSummaryVM.total.formatAsCurrency())")
                    Spacer()
                }
            }
        }
        .onAppear {
            accountSummaryVM.getAllAccounts()
        }
        .sheet(isPresented: self.$isPresented, content: {
            AddAccountScreen()
        })
        .navigationBarItems(trailing: Button(action: {
            self.isPresented = true
        }, label: {
            Text("Add Account")
        }))
        .navigationBarTitle("Account Summary")
        .embedInNavigationView()
    }
}

struct AccountSummaryScreen_Previews: PreviewProvider {
    static var previews: some View {
        AccountSummaryScreen()
    }
}

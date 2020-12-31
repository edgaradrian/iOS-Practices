//
//  AccountSummaryScreen.swift
//  MVVMBankApp
//
//  Created by Edgar Adrián on 15/12/20.
//

import SwiftUI

enum ActiveSheet {
    case addAccount
    case transferFunds
}

struct AccountSummaryScreen: View {
    
    @ObservedObject private var accountSummaryVM = AccountSummaryViewModel()
    
    @State private var isPresented = false
    @State private var activeSheet: ActiveSheet = .addAccount
    
    var body: some View {
        VStack {
            GeometryReader { geometry in
                VStack {
                    AccountListView(accounts: accountSummaryVM.accounts)
                        .frame(height: geometry.size.height/2)
                    Text("\(accountSummaryVM.total.formatAsCurrency())")
                    Spacer()
                    Button(action: {
                        self.activeSheet = .transferFunds
                        self.isPresented = true
                    }) {
                        Text("Transfers Funds")
                    }
                    .padding()
                }
            }
        }
        .onAppear {
            accountSummaryVM.getAllAccounts()
        }
        .sheet(isPresented: self.$isPresented, onDismiss: {
            accountSummaryVM.getAllAccounts()
        }, content: {
            switch self.activeSheet {
            case .addAccount:
                AddAccountScreen()
            case .transferFunds:
                TransfersFundsScreen()
            }
        })
        .navigationBarItems(trailing: Button(action: {
            self.activeSheet = .addAccount
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

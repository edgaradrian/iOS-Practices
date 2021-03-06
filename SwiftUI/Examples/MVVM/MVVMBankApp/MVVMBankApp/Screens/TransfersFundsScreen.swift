//
//  TransfersFundsScreen.swift
//  MVVMBankApp
//
//  Created by Edgar Adrián on 31/12/20.
//

import SwiftUI

struct TransfersFundsScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject private var transfersFundsVM = TransferFundsViewModel()
    @State private var showSheet = false
    @State private var isFromAccount = false
    
    var actionSheetButton: [Alert.Button] {
        
        var actionButtons = self.transfersFundsVM.filteredAccounts.map { account in
            Alert.Button.default(Text("\(account.name) (\(account.accountType)")) {
                if self.isFromAccount {
                    self.transfersFundsVM.fromAccount = account
                } else {
                    self.transfersFundsVM.toAccount = account
                }
            }
        }
        
        actionButtons.append(.cancel())
        return actionButtons
        
    }
    
    var body: some View {
        ScrollView {
            VStack {
                AccountListView(accounts: self.transfersFundsVM.accounts)
                    .frame(height: 300)
                
                TransferFundsAccountSelectView(transferFundsVM: self.transfersFundsVM, showSheet: $showSheet, isFromAccount: $isFromAccount)
                Spacer()
                    .onAppear {
                        self.transfersFundsVM.populateAccounts()
                    }
                
                Text(self.transfersFundsVM.message ?? "")
                
                Button(action: {
                    self.transfersFundsVM.submitTransfer {
                        self.presentationMode.wrappedValue.dismiss()
                    }
                }) {
                    Text("Submit transfer")
                }
                .padding()
                
                .actionSheet(isPresented: $showSheet, content: {
                    ActionSheet(title: Text("Transfer Funds"), message: Text("Choose an account"), buttons: self.actionSheetButton)
                })
            }
        }
        .navigationBarTitle("Transfer Funds")
        .embedInNavigationView()
    }
}

struct TransfersFundsScreen_Previews: PreviewProvider {
    static var previews: some View {
        TransfersFundsScreen()
    }
}

struct TransferFundsAccountSelectView: View {
    
    @ObservedObject var transferFundsVM: TransferFundsViewModel
    @Binding var showSheet: Bool
    @Binding var isFromAccount: Bool
    
    var body: some View {
        VStack(spacing: 10) {
            Button(action: {
                self.isFromAccount = true
                self.showSheet = true
            } ) {
                Text("From \(self.transferFundsVM.fromAccountType)")
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.green)
            .foregroundColor(.white)
            
            Button(action: {
                self.isFromAccount = false
                self.showSheet = true
            }) {
                Text("To \(self.transferFundsVM.toAccountType)")
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.green)
            .foregroundColor(.white)
            .opacity(self.transferFundsVM.fromAccount != nil ? 1.0 : 0.5)
            .disabled(self.transferFundsVM.fromAccount == nil)
            
            TextField("Amount", text: self.$transferFundsVM.amount)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
        }
        .padding()
    }
}

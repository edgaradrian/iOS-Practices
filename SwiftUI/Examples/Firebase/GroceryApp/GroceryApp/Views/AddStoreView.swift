//
//  AddStoreView.swift
//  GroceryApp
//
//  Created by Edgar Ruiz on 09/12/21.
//

import SwiftUI

struct AddStoreView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @StateObject private var addStoreVM = AddStoreViewModel()
    
    var body: some View {
        Form {
            Section {
                TextField("Name", text: $addStoreVM.name)
                TextField("Address", text: $addStoreVM.address)
                HStack {
                    Spacer()
                    Button("Save") {
                        addStoreVM.save()
                    }
                    .onChange(of: addStoreVM.saved) { newValue in
                        if newValue {
                            presentationMode.wrappedValue.dismiss()
                        }
                    }
                    Spacer()
                }
                
                Text(addStoreVM.message)
            }
        }
        .navigationBarItems(leading: Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "xmark")
        }))
        .navigationTitle("Add New Store")
        .embedInNavigationView()
    }
}

struct AddStoreView_Previews: PreviewProvider {
    static var previews: some View {
        AddStoreView()
    }
}

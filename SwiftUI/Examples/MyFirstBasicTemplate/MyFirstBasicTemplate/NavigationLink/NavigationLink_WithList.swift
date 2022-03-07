//
//  NavigationLink_WithList.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Ruiz on 06/03/22.
//

import SwiftUI

struct NavigationLink_WithList: View {
    @State var data = ["Leche", "Pan", "Tomates", "Lechuga", "Cebollas", "Arroz", "Limas"]
    
    var body: some View {
        NavigationView {
            List(data, id: \.self) { data_item in
                NavigationLink(destination: ShoppingDetail(shoppingItem: data_item)) {
                    Text(data_item)
                        .font(Font.system(size: 24))
                        .padding()
                }
            }
            .listStyle(.grouped)
            .navigationTitle("De compras")
            .toolbar {
                ToolbarItem {
                    Button("Agregar") {
                        data.append("Nuevo artículo de compras")
                    }
                }
            }
        }
    }
}

struct ShoppingDetail: View {
    
    var shoppingItem: String
    var body: some View {
        VStack {
            Text("Shopping List Details")
                .font(.title)
                .frame(maxWidth: .infinity)
                .padding()
                .background(
                    Color.cyan
                )
                .foregroundColor(
                    Color.cyan
                )
            Spacer()
            Text(shoppingItem)
                .font(.title)
            Spacer()
        }
        .navigationTitle(shoppingItem)
    }
    
}//ShoppingDetail

struct NavigationLink_WithList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLink_WithList()
    }
}

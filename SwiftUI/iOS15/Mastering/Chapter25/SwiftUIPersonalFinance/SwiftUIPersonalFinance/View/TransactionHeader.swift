//
//  TransactionHeader.swift
//  SwiftUIPersonalFinance
//
//  Created by Edgar Adrián on 06/11/22.
//

import SwiftUI


struct TransactionHeader: View {
    
    @Binding var listType: TransactionDisplayType
    
    var body: some View {
        VStack {
            HStack {
                Text("Transacciones recientes")
                    .font(.headline)
                    .foregroundColor(Color("Heading"))
                    Spacer()
            }
            .padding(.bottom, 5)
            
            HStack {
                Group {
                    Text("Todas")
                        .padding(3)
                        .padding(.horizontal, 10)
                        .background(listType == .all ? Color("PrimaryButton") : Color("SecondaryButton"))
                        .onTapGesture {
                            self.listType = .all
                        }
                    
                    Text("Ingresos")
                        .padding(3)
                        .padding(.horizontal, 10)
                        .background(listType == .income ? Color("PrimaryButton") : Color("SecondaryButton"))
                        .onTapGesture {
                            self.listType = .income
                        }
                    
                    Text("Gastos")
                        .padding(3)
                        .padding(.horizontal, 10)
                        .background(listType == .expense ? Color("PrimaryButton") : Color("SecondaryButton"))
                        .onTapGesture {
                            self.listType = .expense
                        }
                }
                .font(.system(.subheadline, design: .rounded))
                .foregroundColor(.white)
                .cornerRadius(15)
                
                Spacer()
            }
        }
    }
    
}//TransactionHeader


struct TransactionHeader_Previews: PreviewProvider {
    static var previews: some View {
        TransactionHeader(listType: .constant(.all))
    }
}//TransactionHeader_Previews

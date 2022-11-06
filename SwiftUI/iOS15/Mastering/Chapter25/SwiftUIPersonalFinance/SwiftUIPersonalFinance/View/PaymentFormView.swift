//
//  PaymentFormView.swift
//  SwiftUIPersonalFinance
//
//  Created by Edgar Adrián on 05/11/22.
//

import SwiftUI
import CoreData

struct PaymentFormView: View {
    @Environment(\.managedObjectContext) var context
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    @ObservedObject private var paymentFormViewModel: PaymentFormViewModel
    
    var payment: PaymentActivity?
    
    init(payment: PaymentActivity? = nil) {
        self.payment = payment
        self.paymentFormViewModel = PaymentFormViewModel(paymentActivity: payment)
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                
                HStack(alignment: .lastTextBaseline) {
                    Text("Nuevo Pago")
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.black)
                        .padding(.bottom)
                    
                    Spacer()
                    
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "multiply")
                            .font(.title)
                            .foregroundColor(.primary)
                    }
                }
                
                Group {
                    if !paymentFormViewModel.isNameValid {
                        ValidationErrorText(text: "Por favor ingresa el nombre del pago")
                    }
                    
                    if !paymentFormViewModel.isAmountValid {
                        ValidationErrorText(text: "Por favroingresa una cantidad valida")
                    }
                    
                    if !paymentFormViewModel.isMemoValid {
                        ValidationErrorText(text: "Deben ser más de 300 carácteres para tu nota")
                    }
                }
                
                FormTextField(name: "Nombre", placeHolder: "Ingresa tu pago", value: $paymentFormViewModel.name)
                    .padding(.top)
                
                VStack(alignment: .leading) {
                    Text("Tipo")
                        .font(.system(.subheadline, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .padding(.vertical, 10)
                    
                    HStack(spacing: 0) {
                        Button(action: {
                            self.paymentFormViewModel.type = .income
                        }) {
                            Text("Ingreso")
                                .font(.headline)
                                .foregroundColor(self.paymentFormViewModel.type == .income ? Color.white : Color.primary)
                        }
                        .frame(minWidth: 0.0, maxWidth: .infinity)
                        .padding()
                        .background(self.paymentFormViewModel.type == .income ? Color("IncomeCard") : Color(.systemBackground))
                        
                        Button(action: {
                            self.paymentFormViewModel.type = .expense
                        }) {
                            Text("Caro")
                                .font(.headline)
                                .foregroundColor(self.paymentFormViewModel.type == .expense ? Color.white : Color.primary)
                        }
                        .frame(minWidth: 0.0, maxWidth: .infinity)
                        .padding()
                        .background(self.paymentFormViewModel.type == .expense ? Color("ExpenseCard") : Color(.systemBackground))
                    }
                    .border(Color("Border"), width: 1.0)
                }
                
                HStack {
                    FormDateField(name: "Fecha", value: $paymentFormViewModel.date)
                    
                    FormTextField(name: "Cantidad ($)", placeHolder: "0.0", value: $paymentFormViewModel.amount)
                }
                .padding(.top)
                
                FormTextField(name: "Ubicación (Opcional)", placeHolder: "¿Dónde gastas?", value: $paymentFormViewModel.location)
                    .padding(.top)
                
                FormTextEditor(name: "Nota (Opcional)", value: $paymentFormViewModel.memo)
                    .padding(.top)
                
                Button(action: {
                    self.save()
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Guardar")
                        .opacity(paymentFormViewModel.isFormInputValid ? 1.0 : 0.5)
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .background(Color("IncomeCard"))
                        .cornerRadius(10)
                        
                }
                .padding()
                .disabled(!paymentFormViewModel.isFormInputValid)
                
            }
            .padding()
        }
        .keyboardAdaptive()
        
    }//body
    
    
    private func save() {
        let newPayment = payment ?? PaymentActivity(context: context)
        
        newPayment.paymentId = UUID()
        newPayment.name = paymentFormViewModel.name
        newPayment.type = paymentFormViewModel.type
        newPayment.date = paymentFormViewModel.date
        newPayment.amount = Double(paymentFormViewModel.amount)!
        newPayment.address = paymentFormViewModel.location
        newPayment.memo = paymentFormViewModel.memo
        
        do {
            try context.save()
        } catch {
            print("Error al guardar el registro.")
            print(error.localizedDescription)
        }
    }//save
    
    
}//PaymentFormView

struct PaymentFormView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentFormView()
    }
}//PaymentFormView_Previews

import SwiftUI

struct ContentView: View {
    
    @ObservableObject var loanStore = LoanStore()
    
    var body: some View {
        
        NavigationView {
            
            List(loanStore.loans) { loan in
                
                LoanCellView(load: load)
                    .padding(.vertical, 5)
                
            }
            .navigationBarTitle("Kiva Loan")
            
        }
        .onAppear {
            self.loanStore.fetchLatestLoans()
        }
        
        
    }//body
    
}//ContentView


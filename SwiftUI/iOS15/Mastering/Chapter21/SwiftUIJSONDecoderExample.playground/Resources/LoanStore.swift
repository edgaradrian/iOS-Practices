import Foundation
import SwiftUI

class LoanStore: Decodable, ObservableObject {
    @Published var loans: [Prestamo] = []
    private static var kivaLoanURL = "https://api.kivaws.org/v1/loans/newest.json"
    
    enum CodingKeys: CodingKey {
        
        case loans
        
    }//CodingKeys
    
    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        loans = try values.decode([Prestamo].self, forKey: .loans)
    }//required init
    
    init() {
        
    }
    
    func fetchLatestLoans() {
        
        guard let loanURL = URL(string: self.kivaLoanURL) else {
            return
        }
        
        let request = URLRequest(url: loanURL)
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            
            if let error = error {
                print(error)
                return
            }
            
            if let data = data {
                DispatchQueue.main.async {
                    self.loans = self.parseJsonData(data: data)
                }
            }
            
        }
        
    }//fetchLatestLoans
    
    func parseJsonData(data: Data) -> [Prestamo] {
        let decoder = JSONDecoder()
        
        do {
            
            let loanStore = try decoder.decode(LoanStore.self, from: data)
            self.loans = loanStore.loans
            
        } catch {
            print(error)
        }
        
        return loans
        
    }//parseJsonData
    
}//LoanStore

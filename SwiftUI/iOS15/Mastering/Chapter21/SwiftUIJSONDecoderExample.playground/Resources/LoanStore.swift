import Foundation
import SwiftUI

class LoanStore: Decodable, ObservableObject {
    @Published var loans: [Prestamo] = []
    
    enum CodingKeys: CodingKey {
        
        case loans
        
    }//CodingKeys
    
    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        loans = try values.decode([Prestamo].self, forKey: .loans)
    }//required init
    
    init() {
        
    }
}//LoanStore

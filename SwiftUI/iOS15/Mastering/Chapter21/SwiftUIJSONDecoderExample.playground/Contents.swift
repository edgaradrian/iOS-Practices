import UIKit
import Foundation

let json = """
{
    "nombre": "Bebé Juan",
    "pais": "Estados Unidos",
    "uso": "Traslado en autobus",
    "cantidad": 200
}
"""

struct Prestamo: Codable {
    var nombre: String
    var pais: String
    var uso: String
    var cantidad: Int
}//prestamo

let decoder = JSONDecoder()

if let jsonData = json.data(using: .utf8) {
    
    do {
        let prestamo = try decoder.decode(Prestamo.self, from: jsonData)
        print(prestamo)
    } catch {
        print(error)
    }
    
}
